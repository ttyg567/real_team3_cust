package com.kbstar.controller;

import com.kbstar.dto.*;
import com.kbstar.service.*;
import com.kbstar.util.FileUploadUtil;
import com.kbstar.util.PushNotificationUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.net.URLEncoder;
import java.util.List;

@Slf4j
@Controller
@RequestMapping("/groupboard")
public class InboController {
    // imgdir 세팅하면, cust가 조인개설할 때 첨부한 이미지정보를
    // 애플리케이션 프로퍼티에 정해둔, uimg/ 폴더에 집어넣는다.
    @Value("${uploadimgdir}")
    String imgdir;
    @Autowired
    GroupboardService groupboardService;
    @Autowired
    GBMemberService gbMemberService;
    @Autowired
    GymService gymService;
    @Autowired
    private PushNotificationUtil pushNotificationUtil; // 푸쉬알림

    @Autowired
    private CouponService couponService;
    @Autowired
    private NotificationService notificationService;
    String dir = "groupboard/";


    // 4-1 조인 메인페이지
    @RequestMapping("")
    public String main(Model model, String sportsType, HttpSession session) throws Exception {
        Cust cust = null;
        cust = (Cust) session.getAttribute("logincust");

        List<Groupboard> list = null;
        List<Groupboard> list2 = null;

        list = groupboardService.get(); // 조인상태 모집중인 것만 모두 가져오기.
        list2 = groupboardService.selectMySport(cust.getSportsType()); //관심운동 종목과 일치하는 조인 보여주기

        // 성영 : pay를 건드리지 않기 위해
        // 화면에 뿌려주는 조인시 티켓 가격은 TICKETPRICE에서 10% 더 할인된 금액으로 보여준다.
        for (Groupboard item : list){
//            item.setTicketJoinPrice(item.getTicketPrice()*90/100);
            item.setTicketJoinPrice(item.getTicketCost()*(100-((int)item.getTicketDiscount()+10))/100);
        }
        // 선호운동이 일치하는 조인도 동일하게.
        for (Groupboard item : list2){
            item.setTicketJoinPrice(item.getTicketPrice()*90/100);
        }
        // list에 담은 조인들을 jsp에 뿌릴 때 사용할 명칭 정하기
        model.addAttribute("alljoin", list);
        model.addAttribute("mysportstype", list2);
        // webapp > groupboard > center 페이지로 변경
        model.addAttribute("center", dir + "center");
        return "index";
    }
    // 4-2-1 조인 만들기
    @RequestMapping("/makejoin")
    public String makejoin(Model model){
        // webapp > groupboard > makejoin 페이지로 전체 교체(center만 교체되는 것 아님)
        model.addAttribute("center", dir + "makejoin");
        return "index";
    }
    // 4-2-3 조인 만들기에 입력한 정보 전송 기능(+이미지까지)
    @RequestMapping("/makejoinimpl")
    public String makejoinimpl(Model model, Groupboard groupboard) throws Exception {

        log.info("===진입========");
        try {
            MultipartFile mf = groupboard.getGroupboardImgpath(); // 0.tip. getSend_img : 서버전송될 때 이미지 이름
            log.info("=========확인2=========" + mf.toString());
            String Imgname = mf.getOriginalFilename(); // 0.파일 덩어리에서, 이미지이름을 끄집어내기
            log.info("=========확인3=========" + Imgname.toString());
            groupboard.setGroupboardImgname(Imgname); // 0.서버가 아무이름이나 랜덤으로 저장한 이미지 이름을 다시 원래 가지고 있던 이름으로 set 저장해준다.
            groupboardService.register(groupboard); // 1. 개설을 위해 입력한 내용이 db에 정상입력 되면,
            FileUploadUtil.saveFile(mf, imgdir);  // 2. 그때, 파일 덩어리 > 우리 디렉토리(c > project > uimg)에 저장해주기.
        } catch (Exception e){
            e.printStackTrace();
        }

        // 3. 등록완료 후엔 그룹보드 메인 페이지로 이동.
        return  "redirect:/groupboard/success_create";
    }


    // 4-3 조인 만들기 성공 페이지 전환
    @RequestMapping("/success_create")
    public String success_create(Model model){
        // webapp > groupboard > create 페이지로 전체 교체(center만 교체되는 것 아님)
        return dir + "create";
    }
    // 4-4 개설된 조인 보기(더보기)
    @RequestMapping("/groupboard_list")
    public String groupboard_list(Model model) throws Exception {
        List<Groupboard> list = null; // 전체 보여줄 바구니 준비.
        try {
            list = groupboardService.get(); // 가져오기.
        } catch (Exception e) {
            throw new Exception("개설된 조인 전체조회 중 오류가 발생했습니다.");
        }

        // 성영 : pay를 건드리지 않기 위해
        // 화면에 뿌려주는 조인시 티켓 가격은 TICKETPRICE에서 10% 더 할인된 금액으로 보여준다.
        for (Groupboard item : list){
//            item.setTicketJoinPrice(item.getTicketPrice()*90/100);
            item.setTicketJoinPrice(item.getTicketCost()*(100-((int)item.getTicketDiscount()+10))/100);
        }
        // list에 담은 조인들을 jsp에 뿌릴 때 사용할 명칭 정하기
        model.addAttribute("alljoin", list);
        // 조인 전체 조회페이지로 전환
        model.addAttribute("center", dir + "list");
        return "index";
    }
    // 4-5-1 운동카테고리별로 조인 조회하기
    @RequestMapping("/workout") // 헬스
    public String workout(Model model) throws Exception {
        List<Groupboard> list = null; // 1.전체 조인 리스트를 보여줄 바구니 준비.
        List<Groupboard> list2 = null; // 2.모달 선택 시 상세내용 보여줄 바구니 준비.
        try {
            list = groupboardService.getcategory("1"); // 가져오기.
           // list2 = groupboardService.get();
        } catch (Exception e) {
            throw new Exception("개설된 조인 조회 중 오류가 발생했습니다.");
        }

        // 성영 : pay를 건드리지 않기 위해
        // 화면에 뿌려주는 조인시 티켓 가격은 TICKETPRICE에서 10% 더 할인된 금액으로 보여준다.
        for (Groupboard item : list){
//            item.setTicketJoinPrice(item.getTicketPrice()*90/100);
            item.setTicketJoinPrice(item.getTicketCost()*(100-((int)item.getTicketDiscount()+10))/100);
        }

        // list에 담은 조인들을 jsp에 뿌릴 때 사용할 명칭 정하기
        model.addAttribute("alljoin", list);

        // 모달창 오픈 시 해당되는 정보 뿌려주기
        //model.addAttribute("openjoin", list2);
        // 개설된 조인 전체조회 페이지로 전환
        model.addAttribute("center", dir + "workout");
        return "index";
    }
    // 4-5-2 운동카테고리별로 조인 조회하기
    @RequestMapping("/personaltraining") // PT
    public String personaltraining(Model model) throws Exception {
        List<Groupboard> list = null; // 1.전체 조인 리스트를 보여줄 바구니 준비.
        //List<Groupboard> list2 = null; // 2.모달 선택 시 상세내용 보여줄 바구니 준비.
        try {
            list = groupboardService.getcategory("2"); // 가져오기.
            //list2 = groupboardService.get();
        } catch (Exception e) {
            throw new Exception("개설된 조인 조회 중 오류가 발생했습니다.");
        }

        // 성영 : pay를 건드리지 않기 위해
        // 화면에 뿌려주는 조인시 티켓 가격은 TICKETPRICE에서 10% 더 할인된 금액으로 보여준다.
        for (Groupboard item : list){
//            item.setTicketJoinPrice(item.getTicketPrice()*90/100);
            item.setTicketJoinPrice(item.getTicketCost()*(100-((int)item.getTicketDiscount()+10))/100);
        }
        // list에 담은 조인들을 jsp에 뿌릴 때 사용할 명칭 정하기
        model.addAttribute("alljoin", list);
        // 모달창 오픈 시 해당되는 정보 뿌려주기
       // model.addAttribute("openjoin", list2);
        // 개설된 조인 전체조회 페이지로 전환
        model.addAttribute("center", dir + "personaltraining");
        return "index";
    }
    // 4-5-3 운동카테고리별로 조인 조회하기
    @RequestMapping("/crossfit")
    public String crossfit(Model model) throws Exception {
        List<Groupboard> list = null; // 1.전체 조인 리스트를 보여줄 바구니 준비.
       // List<Groupboard> list2 = null; // 2.모달 선택 시 상세내용 보여줄 바구니 준비.
        try {
            list = groupboardService.getcategory("3"); // 가져오기.
            //list2 = groupboardService.get();
        } catch (Exception e) {
            throw new Exception("개설된 조인 조회 중 오류가 발생했습니다.");
        }

        // 성영 : pay를 건드리지 않기 위해
        // 화면에 뿌려주는 조인시 티켓 가격은 TICKETPRICE에서 10% 더 할인된 금액으로 보여준다.
        for (Groupboard item : list){
//            item.setTicketJoinPrice(item.getTicketPrice()*90/100);
            item.setTicketJoinPrice(item.getTicketCost()*(100-((int)item.getTicketDiscount()+10))/100);
        }
        // list에 담은 조인들을 jsp에 뿌릴 때 사용할 명칭 정하기
        model.addAttribute("alljoin", list);

        // 모달창 오픈 시 해당되는 정보 뿌려주기
       // model.addAttribute("openjoin", list2);
        // 개설된 조인 전체조회 페이지로 전환
        model.addAttribute("center", dir + "crossfit");
        return "index";
    }
    // 4-5-4 운동카테고리별로 조인 조회하기
    @RequestMapping("/yoga")
    public String yoga(Model model) throws Exception {
        List<Groupboard> list = null; // 1.전체 조인 리스트를 보여줄 바구니 준비.
       // List<Groupboard> list2 = null; // 2.모달 선택 시 상세내용 보여줄 바구니 준비.
        try {
            list = groupboardService.getcategory("4"); // 가져오기.
           // list2 = groupboardService.get();
        } catch (Exception e) {
            throw new Exception("개설된 조인 조회 중 오류가 발생했습니다.");
        }

        // 성영 : pay를 건드리지 않기 위해
        // 화면에 뿌려주는 조인시 티켓 가격은 TICKETPRICE에서 10% 더 할인된 금액으로 보여준다.
        for (Groupboard item : list){
//            item.setTicketJoinPrice(item.getTicketPrice()*90/100);
            item.setTicketJoinPrice(item.getTicketCost()*(100-((int)item.getTicketDiscount()+10))/100);
        }
        // list에 담은 조인들을 jsp에 뿌릴 때 사용할 명칭 정하기
        model.addAttribute("alljoin", list);

        // 모달창 오픈 시 해당되는 정보 뿌려주기
        // model.addAttribute("openjoin", list2);
        // 개설된 조인 전체조회 페이지로 전환
        model.addAttribute("center", dir + "yoga");
        return "index";
    }
    // 4-5-5 운동카테고리별로 조인 조회하기
    @RequestMapping("/pilates")
    public String pilates(Model model) throws Exception {
        List<Groupboard> list = null; // 1.전체 조인 리스트를 보여줄 바구니 준비.
       // List<Groupboard> list2 = null; // 2.모달 선택 시 상세내용 보여줄 바구니 준비.
        try {
            list = groupboardService.getcategory("5"); // 가져오기.
           // list2 = groupboardService.get();
        } catch (Exception e) {
            throw new Exception("개설된 조인 조회 중 오류가 발생했습니다.");
        }

        // 성영 : pay를 건드리지 않기 위해
        // 화면에 뿌려주는 조인시 티켓 가격은 TICKETPRICE에서 10% 더 할인된 금액으로 보여준다.
        for (Groupboard item : list){
//            item.setTicketJoinPrice(item.getTicketPrice()*90/100);
            item.setTicketJoinPrice(item.getTicketCost()*(100-((int)item.getTicketDiscount()+10))/100);
        }
        // list에 담은 조인들을 jsp에 뿌릴 때 사용할 명칭 정하기
        model.addAttribute("alljoin", list);

        // 모달창 오픈 시 해당되는 정보 뿌려주기
       // model.addAttribute("openjoin", list2);
        // 개설된 조인 전체조회 페이지로 전환
        model.addAttribute("center", dir + "pilates");
        return "index";
    }
    // 4-5-6 운동카테고리별로 조인 조회하기
    @RequestMapping("/golf")
    public String golf(Model model) throws Exception {
        List<Groupboard> list = null; // 1.전체 조인 리스트를 보여줄 바구니 준비.
        //List<Groupboard> list2 = null; // 2.모달 선택 시 상세내용 보여줄 바구니 준비.
        try {
            list = groupboardService.getcategory("6"); // 가져오기.
            //list2 = groupboardService.get();
        } catch (Exception e) {
            throw new Exception("개설된 조인 조회 중 오류가 발생했습니다.");
        }

        // 성영 : pay를 건드리지 않기 위해
        // 화면에 뿌려주는 조인시 티켓 가격은 TICKETPRICE에서 10% 더 할인된 금액으로 보여준다.
        for (Groupboard item : list){
//            item.setTicketJoinPrice(item.getTicketPrice()*90/100);
            item.setTicketJoinPrice(item.getTicketCost()*(100-((int)item.getTicketDiscount()+10))/100);
        }
        // list에 담은 조인들을 jsp에 뿌릴 때 사용할 명칭 정하기
        model.addAttribute("alljoin", list);

        // 모달창 오픈 시 해당되는 정보 뿌려주기
        //model.addAttribute("openjoin", list2);
        // 개설된 조인 전체조회 페이지로 전환
        model.addAttribute("center", dir + "golf");
        return "index";
    }
    // 4-5-7 운동카테고리별로 조인 조회하기
    @RequestMapping("/swimming")
    public String swimming(Model model) throws Exception {
        List<Groupboard> list = null; // 1.전체 조인 리스트를 보여줄 바구니 준비.
        //List<Groupboard> list2 = null; // 2.모달 선택 시 상세내용 보여줄 바구니 준비.
        try {
            list = groupboardService.getcategory("7"); // 가져오기.
           // list2 = groupboardService.get();
        } catch (Exception e) {
            throw new Exception("개설된 조인 조회 중 오류가 발생했습니다.");
        }

        // 성영 : pay를 건드리지 않기 위해
        // 화면에 뿌려주는 조인시 티켓 가격은 TICKETPRICE에서 10% 더 할인된 금액으로 보여준다.
        for (Groupboard item : list){
//            item.setTicketJoinPrice(item.getTicketPrice()*90/100);
            item.setTicketJoinPrice(item.getTicketCost()*(100-((int)item.getTicketDiscount()+10))/100);
        }
        // list에 담은 조인들을 jsp에 뿌릴 때 사용할 명칭 정하기
        model.addAttribute("alljoin", list);
        // 모달창 오픈 시 해당되는 정보 뿌려주기
        //model.addAttribute("openjoin", list2);
        // 개설된 조인 전체조회 페이지로 전환
        model.addAttribute("center", dir + "swimming");
        return "index";
    }
    // 4-6 조인 신청하기 기능 + 신청완료 페이지 이동
    @RequestMapping("/success_apply")
    public String success_apply(Model model, GBMember gbMember) throws Exception {

        List<Groupboard> groupboard_is_completed = null;

        Integer groupboardNo = gbMember.getGroupboardNo();

        log.info("gbMember.getGroupboardNo()" + gbMember.getGroupboardNo());
        log.info("gbMember.getCustNo()" + gbMember.getCustNo());

        // 조인 신청회원으로 등록해주기 OK
        gbMemberService.register(gbMember);

        // 멤버가 신청할 때마다 신청인원 +1, 확정인원 +1 하고,
        // 모집인원과 확정인원이 같으면 상태를 '5'로 바꿔준다. OK
        groupboardService.updateStatus(gbMember.getGroupboardNo());

        groupboard_is_completed = groupboardService.selectGroupboardCompleted(gbMember.getGroupboardNo()); // 모집완료된거 추출  OK

        // 꽉 차면 각 사용자들에게 쿠폰을 보낸다.
        if(groupboard_is_completed!=null && groupboard_is_completed.size()!=0){
//            joinCompleted(gbMember.getGroupboardNo());

            List<Groupboard> target_list = null;
            Coupon cp = null;

            // 쿠폰 발송 대상인 cust를 긁어온다.
            target_list = groupboardService.selectJoincompletedmember(groupboardNo);

            log.info("==상태를 봐야겠음==" + target_list);

            if (target_list != null && target_list.size()!=0) {
                for (Groupboard item : target_list) {
                    log.info("쿠폰 알림 진입");

                    // 앱 내 알람
                    Notification noti = new Notification();
                    noti.setCustNo(item.getCustNo()); //custNo
                    noti.setGymNo(999999); // gymNo (가상)
                    noti.setTicketNo(999999); // ticketNo(가상)
                    noti.setClassNo(999999); // classNo(가상)
                    noti.setNotiTitle("쿠폰발행");
                    noti.setNotiMessage("조인완료 이용권 할인쿠폰이 발행되었어요");
                    noti.setNotiType("4");
                    notificationService.register(noti);

                    item.setGroupboardNo(groupboardNo); // getGroupboardNo 쿠폰에 식별해서 들어가야 함
                    couponService.getCouponcust_update_discount(item); // 쿠폰을 발송한다. // 이게 왜...... 지예 로그인, 성영 로그인하고 신청 완료 -> 앞서 로그인 사람이 두번 업데이트 됨 / 다른 ip 여야 되네 뭐여
                    cp = couponService.getTodaymycoupon(item.getCustNo()); // 현재 시간 기준으로 직전에 보낸 쿠폰을 추출

                    // firebase 알람
                    String clientToken = "";

                    log.info("==토큰을 보자==" + item.getCustToken());

                    // 토큰이 null이 아니면
                    if(item.getCustToken()!=null){
                        clientToken = item.getCustToken().replaceAll("\\s+", ""); // 토큰에서 공백 제거
                        log.info("=== 쿠폰 대상 번호는 === " + item.getCustNo() + "=====");
                        log.info("=== 쿠폰 대상 이름은 === " + item.getCustName() + "=====");
                        log.info("=== 쿠폰 대상 토큰은 === " + item.getCustToken() + "=====");
                        PushNotificationUtil.sendCommonMessage("Open Coupon Box", "Open Coupon Box", "/coupon/show?couponNo="+cp.getCouponNo(), clientToken);
                    }

                }
            }
        }

        model.addAttribute("groupboard_is_completed", groupboard_is_completed);
        
        // webapp > groupboard > apply 페이지로 전체 교체(center만 교체되는 것 아님)
       return dir + "apply";
    }

    // 4-7-1 나의 조인 보기
    @RequestMapping("/my_applyjoin")
    public String my_applyjoin(Model model, Integer custNo, HttpSession session, HttpServletRequest request) throws Exception {
       List<Groupboard> list1 = null;
        List<Groupboard> list2 = null;
        // 로그인 체크
//        Cust cust = (Cust) session.getAttribute("logincust");
//        if (cust == null) {
//            // 로그인 완료한 뒤 다시 돌아오도록 url 저장
//            String redirectUrl = "/groupboard/my_applyjoin?custNo=" + custNo;
//            request.getSession().setAttribute("redirectUrl", redirectUrl);
//            return "redirect:/login"; // 로그인하지 않은 경우 로그인 페이지로 리다이렉트
//        }

        try {
            list1 = groupboardService.getMyJoin(custNo); // 고객의 조인 정보를 list에 담기.
            list2 = groupboardService.getMyCreateJoin(custNo);

        } catch (Exception e) {
            throw new Exception(e);
        }
        model.addAttribute("myapplyjoin", list1); // 내가 참여한 조인정보 보기
        model.addAttribute("mycreatejoin", list2); // 내가 만든 조인정보 보기

        model.addAttribute("center", dir + "myjoin");
        return "index"; // 로그인 후 "my_applyjoin" 페이지로 이동
    }

    // 성영 추가
//    public void joinCompleted(Integer getGroupboardNo) throws Exception {
//
//        List<Groupboard> target_list = null;
//        Coupon cp = null;
//
//        // 쿠폰 발송 대상인 cust를 긁어온다.
//        target_list = groupboardService.selectJoincompletedmember(getGroupboardNo);
//
//        log.info("==상태를 봐야겠음==" + target_list);
//
//        if (target_list != null && target_list.size()!=0) {
//            for (Groupboard item : target_list) {
//                log.info("쿠폰 알림 진입");
//
//                // 앱 내 알람
//                Notification noti = new Notification();
//                noti.setCustNo(ㅇㅇㅇㅇㅇ); //custNo
//                noti.setGymNo(999999); // gymNo (가상)
//                noti.setTicketNo(999999); // ticketNo(가상)
//                noti.setClassNo(999999); // classNo(가상)
//                noti.setNotiTitle("쿠폰발행");
//                noti.setNotiMessage("조인완료 이용권 할인쿠폰이 발행되었어요");
//                noti.setNotiType("4");
//                notificationService.register(noti);
//
//                item.setGroupboardNo(getGroupboardNo); // getGroupboardNo 쿠폰에 식별해서 들어가야 함
//                couponService.getCouponcust_update_discount(item); // 쿠폰을 발송한다.
//                cp = couponService.getTodaymycoupon(item.getCustNo()); // 현재 시간 기준으로 직전에 보낸 쿠폰을 추출
//
//                // firebase 알람
//                String clientToken = "";
//
//                // 토큰이 null이 아니면
//                if(item.getCustToken()!=null){
//                    item.getCustToken().replaceAll("\\s+", ""); // 토큰에서 공백 제거
//                    log.info("=== 쿠폰 대상 번호는 === " + item.getCustNo() + "=====");
//                    log.info("=== 쿠폰 대상 이름은 === " + item.getCustName() + "=====");
//                    log.info("=== 쿠폰 대상 토큰은 === " + item.getCustToken() + "=====");
//                    pushNotificationUtil.sendCommonMessage("Open Coupon Box", "Open Coupon Box", "/coupon/show?couponNo="+cp.getCouponNo(), clientToken);
//                }
//
//            }
//        }
//
//    }

}




