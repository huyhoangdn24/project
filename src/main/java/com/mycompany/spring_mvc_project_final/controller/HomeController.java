package com.mycompany.spring_mvc_project_final.controller;


import com.mycompany.spring_mvc_project_final.entities.ProductEntity;
import com.mycompany.spring_mvc_project_final.repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.List;


@Controller
public class HomeController {
    @Autowired
    ProductRepository productRepository;
    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public String home(@RequestParam(name = "searchInput", required = false) String searchInput, Model model, HttpSession session){
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String username = principal.toString();

        if (principal instanceof UserDetails) {
            username = ((UserDetails) principal).getUsername();
            session.setAttribute("username", username);

        }
        List<ProductEntity> reasultList;
        if (null== searchInput ||searchInput.isEmpty()){
            reasultList=(List<ProductEntity>)productRepository.findByView();
        }else {
            reasultList=productRepository.findBySearchInputContaining(searchInput);
        }
        model.addAttribute("listOfProducts",reasultList);
        return "index";
    }
    @RequestMapping(value = "search",method = RequestMethod.GET)
    public String searchBook(@RequestParam("searchInput")String searchInput, Model model){
        List<ProductEntity> reasultList;
        if (searchInput.isEmpty()){
            reasultList=(List<ProductEntity>)productRepository.findAll();
        }else {
            reasultList=productRepository.findBySearchInputContaining(searchInput);
        }
        model.addAttribute("listOfProducts",reasultList);
        return "index";
    }
}