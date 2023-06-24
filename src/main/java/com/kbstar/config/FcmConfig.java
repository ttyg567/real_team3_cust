package com.kbstar.config;

import com.google.auth.oauth2.GoogleCredentials;
import com.google.firebase.FirebaseApp;
import com.google.firebase.FirebaseOptions;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.ClassPathResource;

import javax.annotation.PostConstruct;

@Configuration
class FcmConfig {
    public String firebaseConfig = "fcm_admin.json";

    @PostConstruct
    public void init(){
        try{
//            if (FirebaseApp.getApps().isEmpty()) {
//                FirebaseOptions options = new FirebaseOptions.Builder()
//                        .setCredentials(GoogleCredentials
//                                .fromStream(new ClassPathResource(firebaseConfig).getInputStream()))
//                        .build();
//                FirebaseApp.initializeApp(options);
//            }
            FirebaseOptions options = new FirebaseOptions.Builder()
                    .setCredentials( GoogleCredentials
                            .fromStream(new ClassPathResource(firebaseConfig).getInputStream()))
                    .build();
            FirebaseApp.initializeApp(options);
        }catch (Exception e){
            e.printStackTrace();
        }
    }
}