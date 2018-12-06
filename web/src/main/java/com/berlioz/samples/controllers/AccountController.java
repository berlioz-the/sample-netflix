package com.berlioz.samples.controllers;

import com.berlioz.samples.entities.Movie;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.client.RestTemplate;

@Controller
public class AccountController {

    @Autowired
    RestTemplate restTemplate;

    @RequestMapping("/account")
    public String handle(ModelMap model) {

        Movie[] movies = restTemplate.getForObject("/list", Movie[].class);
        model.addAttribute("movies", movies);

        return "account";
    }

}