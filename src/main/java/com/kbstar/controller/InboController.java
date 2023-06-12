package com.kbstar.controller;

import com.kbstar.dto.GBMember;
import com.kbstar.dto.Groupboard;
import com.kbstar.dto.Gym;
import com.kbstar.dto.gymSearch;
import com.kbstar.service.GBMemberService;
import com.kbstar.service.GroupboardService;
import com.kbstar.service.GymService;
import com.kbstar.util.FileUploadUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

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
    String dir = "groupboard/";
    // 4-1 조인 메인페이지
    @RequestMapping("")
    public String main(Model model) throws Exception {
        List<Groupboard> list = null;
        list = groupboardService.get(); // 가져오기.

        // list에 담은 조인들을 jsp에 뿌릴 때 사용할 명칭 정하기
        model.addAttribute("alljoin", list);
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
            log.info("=========확인2=========" + Imgname.toString());
            groupboard.setGroupboardImgname(Imgname); // 0.서버가 아무이름이나 랜덤으로 저장한 이미지 이름을 다시 원래 가지고 있던 이름으로 set 저장해준다.
            groupboardService.register(groupboard); // 1. 개설을 위해 입력한 내용이 db에 정상입력 되면,
            FileUploadUtil.saveFile(mf, imgdir);  // 2. 그때, 파일 덩어리 > 우리 디렉토리(c > project > uimg)에 저장해주기.
        } catch (Exception e){
            e.printStackTrace();
        }

        // 3. 등록완료 후엔 그룹보드 메인 페이지로 이동.
        return  "redirect:/groupboard";
    }


    // 4-3 조인 만들기 성공 페이지 전환
    @RequestMapping("/success_create")
    public String success_create(Model model){
        // webapp > groupboard > create 페이지로 전체 교체(center만 교체되는 것 아님)
        return dir + "create";
    }
    // 4-4 개설된 조인 보기
    @RequestMapping("/groupboard_list")
    public String groupboard_list(Model model) throws Exception {
        List<Groupboard> list = null; // 전체 보여줄 바구니 준비.
        try {
            list = groupboardService.get(); // 가져오기.
        } catch (Exception e) {
            throw new Exception("개설된 조인 전체조회 중 오류가 발생했습니다.");
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
        List<Groupboard> list = null; // 전체 보여줄 바구니 준비.
        try {
            list = groupboardService.getcategory("1"); // 가져오기.
        } catch (Exception e) {
            throw new Exception("개설된 조인 조회 중 오류가 발생했습니다.");
        }
        // list에 담은 조인들을 jsp에 뿌릴 때 사용할 명칭 정하기
        model.addAttribute("alljoin", list);
        // 개설된 조인 전체조회 페이지로 전환
        model.addAttribute("center", dir + "workout");
        return "index";
    }
    // 4-5-2 운동카테고리별로 조인 조회하기
    @RequestMapping("/personaltraining") // PT
    public String personaltraining(Model model) throws Exception {
        List<Groupboard> list = null; // 전체 보여줄 바구니 준비.
        try {
            list = groupboardService.getcategory("2"); // 가져오기.
        } catch (Exception e) {
            throw new Exception("개설된 조인 조회 중 오류가 발생했습니다.");
        }
        // list에 담은 조인들을 jsp에 뿌릴 때 사용할 명칭 정하기
        model.addAttribute("alljoin", list);
        // 개설된 조인 전체조회 페이지로 전환
        model.addAttribute("center", dir + "personaltraining");
        return "index";
    }
    // 4-5-3 운동카테고리별로 조인 조회하기
    @RequestMapping("/crossfit")
    public String crossfit(Model model) throws Exception {
        List<Groupboard> list = null; // 전체 보여줄 바구니 준비.
        try {
            list = groupboardService.getcategory("3"); // 가져오기.
        } catch (Exception e) {
            throw new Exception("개설된 조인 조회 중 오류가 발생했습니다.");
        }
        // list에 담은 조인들을 jsp에 뿌릴 때 사용할 명칭 정하기
        model.addAttribute("alljoin", list);
        // 개설된 조인 전체조회 페이지로 전환
        model.addAttribute("center", dir + "crossfit");
        return "index";
    }
    // 4-5-4 운동카테고리별로 조인 조회하기
    @RequestMapping("/yoga")
    public String yoga(Model model) throws Exception {
        List<Groupboard> list = null; // 전체 보여줄 바구니 준비.
        try {
            list = groupboardService.getcategory("4"); // 가져오기.
        } catch (Exception e) {
            throw new Exception("개설된 조인 조회 중 오류가 발생했습니다.");
        }
        // list에 담은 조인들을 jsp에 뿌릴 때 사용할 명칭 정하기
        model.addAttribute("alljoin", list);
        // 개설된 조인 전체조회 페이지로 전환
        model.addAttribute("center", dir + "yoga");
        return "index";
    }
    // 4-5-5 운동카테고리별로 조인 조회하기
    @RequestMapping("/pilates")
    public String pilates(Model model) throws Exception {
        List<Groupboard> list = null; // 전체 보여줄 바구니 준비.
        try {
            list = groupboardService.getcategory("5"); // 가져오기.
        } catch (Exception e) {
            throw new Exception("개설된 조인 조회 중 오류가 발생했습니다.");
        }
        // list에 담은 조인들을 jsp에 뿌릴 때 사용할 명칭 정하기
        model.addAttribute("alljoin", list);
        // 개설된 조인 전체조회 페이지로 전환
        model.addAttribute("center", dir + "pilates");
        return "index";
    }
    // 4-5-6 운동카테고리별로 조인 조회하기
    @RequestMapping("/golf")
    public String golf(Model model) throws Exception {
        List<Groupboard> list = null; // 전체 보여줄 바구니 준비.
        try {
            list = groupboardService.getcategory("6"); // 가져오기.
        } catch (Exception e) {
            throw new Exception("개설된 조인 조회 중 오류가 발생했습니다.");
        }
        // list에 담은 조인들을 jsp에 뿌릴 때 사용할 명칭 정하기
        model.addAttribute("alljoin", list);
        // 개설된 조인 전체조회 페이지로 전환
        model.addAttribute("center", dir + "golf");
        return "index";
    }
    // 4-5-7 운동카테고리별로 조인 조회하기
    @RequestMapping("/swimming")
    public String swimming(Model model) throws Exception {
        List<Groupboard> list = null; // 전체 보여줄 바구니 준비.
        try {
            list = groupboardService.getcategory("7"); // 가져오기.
        } catch (Exception e) {
            throw new Exception("개설된 조인 조회 중 오류가 발생했습니다.");
        }
        // list에 담은 조인들을 jsp에 뿌릴 때 사용할 명칭 정하기
        model.addAttribute("alljoin", list);
        // 개설된 조인 전체조회 페이지로 전환
        model.addAttribute("center", dir + "swimming");
        return "index";
    }
    // 4-6 조인 신청하기 기능 + 신청완료 페이지 이동
    @RequestMapping("/success_apply")
    public String success_apply(Model model, GBMember gbMember) throws Exception {
        // 조인 신청회원으로 등록해주기
        gbMemberService.register(gbMember);
        
        // webapp > groupboard > apply 페이지로 전체 교체(center만 교체되는 것 아님)
       return dir + "apply";
    }
    // 4-7-1 나의 조인 보기
    @RequestMapping("/my_applyjoin")
    public String my_applyjoin(Model model, Integer custNo) throws Exception {
       List<Groupboard> list1 = null;
        List<Groupboard> list2 = null;
        try {
            list1 = groupboardService.getMyJoin( custNo ); // 고객의 조인 정보를 list에 담기.
            list2 = groupboardService.getMyCreateJoin(custNo);
        } catch (Exception e) {
            throw new Exception(e);
        }
        model.addAttribute("myapplyjoin", list1); // 내가 참여한 조인정보 보기
        model.addAttribute("mycreatejoin", list2); // 내가 만든 조인정보 보기
        // 나의조인 조회페이지로 전환
        model.addAttribute("center", dir + "myjoin");
        return "index";
    }





}
