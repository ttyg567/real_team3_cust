package com.kbstar.controller;

import com.kbstar.dto.Gym;
import com.kbstar.service.GymService;
import lombok.extern.slf4j.Slf4j;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Slf4j
@Controller
@RequestMapping("/map")
public class MapController {

    Logger logger = LoggerFactory.getLogger(this.getClass().getSimpleName());
    String dir = "map/";

    @Autowired
    GymService gymService;

    @RequestMapping("/getaddress")
    @ResponseBody
    public Object getaddress(Model model) throws Exception {

        List<Gym> gymAddresslist = null;
        gymAddresslist = gymService.get();

        // [{},{},{}]
        JSONArray ja = new JSONArray();
        for (Gym obj : gymAddresslist){
            JSONObject jo = new JSONObject();
            jo.put("gymNo", obj.getGymNo());
            jo.put("gymName", obj.getGymName());
            jo.put("gymZipcode", obj.getGymZipcode());
            jo.put("gymAddress1", obj.getGymAddress1());
            jo.put("gymAddress2", obj.getGymAddress2());
            jo.put("gymAddress3", obj.getGymAddress3());
            jo.put("gymAddress", obj.getGymAddress1()+" "+obj.getGymAddress2()+" "+obj.getGymAddress3());
            jo.put("gymPhone", obj.getGymPhone());
            ja.add(jo);
        }
        log.info("==========="+ja+"==============");
        return ja;
    }
}

