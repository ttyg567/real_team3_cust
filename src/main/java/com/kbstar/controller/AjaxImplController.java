package com.kbstar.controller;

import com.kbstar.dto.Cust;
import com.kbstar.service.CustService;
import com.kbstar.util.FileUploadUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpSession;
import java.util.Date;

@Slf4j
@RestController
public class AjaxImplController {

    @Autowired
    CustService custService;

    @Value("${uploadimgdir}")
    String imgdir;

    @RequestMapping("/saveimg")
    public String saveimg(MultipartFile file, HttpSession session) throws Exception {
        String filename = file.getOriginalFilename();
        FileUploadUtil.saveFile(file, imgdir);

        // DB 업데이트를 위해 필요한 정보 설정
        String custImgName = filename;
     // 이미 있는 custNo 설정

        // 업데이트를 위한 객체 생성
        Cust cust = (Cust) session.getAttribute("logincust");
        int custNo= cust.getCustNo();
        cust.setCustImgName(custImgName);
        cust.setCustNo(custNo);

        // 업데이트 쿼리 실행
        custService.updateCustImgName(cust);

        return "custImgName";
    }
    @RequestMapping("/getservertime")
    public Object getservertime(){
        Date date = new Date();
        return date;
    }


}
