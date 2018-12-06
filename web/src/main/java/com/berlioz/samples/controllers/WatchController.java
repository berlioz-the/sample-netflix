package com.berlioz.samples.controllers;

import com.berlioz.samples.entities.WatchableMovie;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;

@Controller
public class WatchController {

    @Autowired
    RestTemplate restTemplate;

    @RequestMapping("/watch")
    public String handle(@RequestParam("id") String id, ModelMap model) {
        WatchableMovie movie = restTemplate.getForObject("/watch?id={id}", WatchableMovie.class, id);

        model.addAttribute("movie", movie);

        return "watch";
    }

}