package com.mycompany.spring_mvc_project_final.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
@Controller
public class BlogController {
    @RequestMapping(value = "/blog", method = RequestMethod.GET)
    public String viewProducts(Model model) {
        return "blog";
    }
    @RequestMapping(value = "/shopping-cart", method = RequestMethod.GET)
    public String view(Model model) {
        return "shopping-cart";
    }
}
