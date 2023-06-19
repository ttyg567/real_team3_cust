package com.kbstar.util;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.WriterException;
import com.google.zxing.client.j2se.MatrixToImageWriter;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.qrcode.QRCodeWriter;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;

import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.nio.file.Files;
import java.nio.file.Path;

public class QRCodeUtils {

    public static void text2QRCode(String contents, int width, int height, String filename) throws WriterException, IOException {
        BitMatrix bitMatrix = createBitMatrix(contents, width, height);

        // 변경된 파일 경로 설정
        String destinationPath = "src/main/resources/static/assets/img/qr/" + filename;

        // 파일 복사
        Path destination = Path.of(destinationPath);
        Files.createDirectories(destination.getParent());
        MatrixToImageWriter.writeToPath(bitMatrix, "png", destination);

        // 파일 경로 출력
        System.out.println("QR 코드 이미지가 저장된 경로: " + destination.toAbsolutePath());
    }

//    public static void text2QRCode(String contents, int width, int height,
//                                   String filename) throws WriterException, IOException {
//        BitMatrix bitMatrix = createBitMatrix(contents, width, height);
//        MatrixToImageWriter.writeToFile(bitMatrix, "png", new File(filename));
//    }

    public static void text2QRCode(String contents, int width, int height,
                                   OutputStream os) throws WriterException, IOException {
        BitMatrix bitMatrix = createBitMatrix(contents, width, height);
        MatrixToImageWriter.writeToStream(bitMatrix, "png", os);
    }

    private static BitMatrix createBitMatrix(String contents, int width,
                                             int height) throws UnsupportedEncodingException, WriterException {
        contents = new String(contents.getBytes("UTF-8"), "ISO-8859-1");

        QRCodeWriter qrCodeWriter = new QRCodeWriter();
        BitMatrix bitMatrix = qrCodeWriter.encode(contents,
                BarcodeFormat.QR_CODE, width, height);
        return bitMatrix;
    }
}
