package com.kbstar.QR;

import com.google.zxing.WriterException;
import com.kbstar.util.QRCodeUtils;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import java.io.FileOutputStream;
import java.io.IOException;

@Slf4j
@SpringBootTest
public class QRCodeUtilsTest {


    @Test
    public void text2QRCodeWithText() throws WriterException, IOException {
        // String contents = "I love you.";
        String contents = "테스트";
        int width = 200;
        int height = 200;
        String filename = "text_qrcode.png";

        QRCodeUtils.text2QRCode(contents, width, height, filename);
    }


    @Test
    public void text2QRCodeWithUrl() throws WriterException, IOException {
        String contents = "http://ctbrg.cafe24.com";
        int width = 200;
        int height = 200;
        String filename = "url_qrcode.png";

        QRCodeUtils.text2QRCode(contents, width, height, filename);
    }

//    @Test
//    public void text2QRCodeAsStream() throws WriterException, IOException {
//        String contents = "테스트";
//        int width = 200;
//        int height = 200;
//        String filename = "text_qrcode_as_stream.png";
//
//        FileOutputStream fos = new FileOutputStream(filename);
//        QRCodeUtils.text2QRCode(contents, width, height, fos);
//    }

}
