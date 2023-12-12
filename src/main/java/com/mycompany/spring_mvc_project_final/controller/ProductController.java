package com.mycompany.spring_mvc_project_final.controller;

import com.mycompany.spring_mvc_project_final.entities.ProductEntity;
import com.mycompany.spring_mvc_project_final.repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;


import java.util.List;

@Controller
public class ProductController {
    @Autowired
    ProductRepository productRepository;
    @RequestMapping(value = "/product", method = RequestMethod.GET)
    public String viewProducts(Model model) {
        List<ProductEntity> productList = (List<ProductEntity>)productRepository.findAll();
        model.addAttribute("productList", productList);
        return "product";
    }
//        @RequestMapping(value = "search",method = RequestMethod.GET)
//    public String searchBook(@RequestParam("searchInput")String searchInput, Model model){
//        List<ProductEntity> reasultList;
//        if (searchInput.isEmpty()){
//            reasultList=(List<ProductEntity>)productService.findAll();
//        }else {
//            reasultList=productService.findBySearchInputContaining(searchInput);
//        }
//        model.addAttribute("productList",reasultList);
//        return "index";
//    }


}




