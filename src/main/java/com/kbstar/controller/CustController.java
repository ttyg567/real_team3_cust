package com.kbstar.controller;

import com.kbstar.dto.Cust;
import com.kbstar.service.CustService;
import lombok.extern.slf4j.Slf4j;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpSession;
import java.util.Random;

@Slf4j
@Controller
@RequestMapping("/cust")
public class CustController {
    Logger logger = LoggerFactory.getLogger(this.getClass().getSimpleName());
    String dir = "cust/";

    @Autowired
    CustService custService;

    @Autowired
    BCryptPasswordEncoder encoder;

    @Autowired
    private JavaMailSender mailSender;

    @Value("${spring.mail.username}")
    private String username;

    @Value("${uploadimgdir}")
    String imgdir;

    @RequestMapping("/login")
    public String login(Model model, String redirectURL) {
        model.addAttribute("redirectURL", redirectURL); // 다음페이지를 숨겨 놓고
        model.addAttribute("center", dir+"login");
        return "index";
    }

    @RequestMapping("/loginimpl")
    public String loginimpl(Model model, String custEmail, String custPwd,
                            HttpSession session, String redirectURL) throws Exception {
        Cust cust = null;
        String nextPage = "loginfail";
        try {
            cust = custService.get(custEmail);
            if(cust != null && encoder.matches(custPwd, cust.getCustPwd())){
                nextPage = "loginok";
                session.setMaxInactiveInterval(100000);
                session.setAttribute("logincust",cust);
                if (redirectURL == null || redirectURL.equals("")) {
                    return "redirect:/";
                }else {
                    return "redirect:"+redirectURL;
                }
            }
        } catch (Exception e) {
            throw new Exception("시스템 장애. 잠시 후 다시 로그인 하세요");
        }
        model.addAttribute("center",dir + nextPage);
        return "index";
    }

    @RequestMapping("/logoutimpl")
    public String logoutimpl(HttpSession session){
        if(session != null){
            session.invalidate();
        }
        return "redirect:/";
    }

    @RequestMapping("/register")
    public String register(Model model){
        model.addAttribute("center", dir + "register");
        return "index";
    }

    @RequestMapping("/checkEmail")
    @ResponseBody
    public String checkEmail(String custEmail) {
        Cust result = null;
        try {
            result = custService.get(custEmail); // 일치하는 email이 있다면
            if (result != null) {
                return "fail";
            }
            return "success";
        } catch (Exception e) {
            throw new RuntimeException("이메일 중복체크 오류");
        }
    }

    // 이메일 인증
    @RequestMapping(value = "/mailCheck", method= RequestMethod.GET)
    @ResponseBody
    public String mailCheck(String custEmail) throws Exception {
        /* 뷰로 넘어온 데이터 확인 */
        logger.info("이메일 데이터 전송 확인: " + custEmail);
        /* 인증번호 난수 생성 */
        Random random = new Random();
        int checkNum = random.nextInt(888888) +111111; /* 0 ~ 888887 */ /* 111111~999998 */
        logger.info("인증번호: " + checkNum);

        /* 이메일 보내기 */
        String setForm = username;
        String toMail = custEmail; // 수신 받을 이메일
        String title = "회원가입 인증 이메일입니다. ";
        String content =
                "헬쓱 홈페이지를 방문해주셔서 감사합니다. " +
                        "<br><br>" +
                        "인증번호는 " + checkNum + "입니다. "+
                        "<br>" +
                        "해당 인증번호를 인증번호 확인란에 넣어주세요.";

        try{
            MimeMessage message = mailSender.createMimeMessage();
            MimeMessageHelper helper = new MimeMessageHelper(message, true, "utf-8");
            helper.setFrom(setForm);
            helper.setTo(toMail);
            helper.setSubject(title);
            helper.setText(content, true);
            mailSender.send(message);
        }catch(Exception e){
            e.printStackTrace();
        }

        return Integer.toString(checkNum);
    }

    @RequestMapping("/registerimpl")
    public String registerimpl(Model model, Cust cust, HttpSession session) throws Exception {

        try {
            cust.setCustSido("임시세팅시도");
            cust.setCustSigungu("임시세팅시군구");
            cust.setCustSocialmedia("0");  // 임시세팅 Socialmedia 0
            cust.setCustSnstype("0"); // 임시세팅 Snstype 0
            cust.setCustPwd((encoder.encode(cust.getCustPwd())));
            // DB 가입
            custService.register(cust);
            session.setAttribute("logincust", cust);
        } catch(Exception e){
            e.printStackTrace();
            throw new Exception("가입오류");
        }

        model.addAttribute("rcust", cust);
        return "redirect:/";
    }

}
