package com.mycompany.spring_mvc_project_final.controller;


import com.mycompany.spring_mvc_project_final.entities.CategoryEntity;
import com.mycompany.spring_mvc_project_final.entities.ProductEntity;
import com.mycompany.spring_mvc_project_final.repository.CategoryRepository;
import com.mycompany.spring_mvc_project_final.repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import static org.springframework.web.bind.annotation.RequestMethod.GET;


//@Controller
//@RequestMapping(value="/home")
//public class HomeController {
//    @Autowired
//    ProductRepository productRepository;
//
//    @Autowired
//    CategoryRepository categoryRepository;
//
//    @RequestMapping(method = GET)
//
//    public String showProduct(Model model) {
//        List<ProductEntity> productList = (List<ProductEntity>) productRepository.findAll();
//        List<CategoryEntity> categoryEntityList = (List<CategoryEntity>) categoryRepository.findAll();
//        model.addAttribute("productList", productList);
//        model.addAttribute("categoryEntityList", categoryEntityList);
//        return "home";
//    }
//}
////    @RequestMapping(value = "/login", method = RequestMethod.GET)
////    public String login(Model model){
////        return "login";
////    }
////    @RequestMapping(value = "/search", method = RequestMethod.GET)
////    public String search (@RequestParam("searchInput") String searchInput, Model model){
////        List<BookEntity> resultList;
////        if (searchInput.isEmpty()){
////            resultList = (List<BookEntity>) bookRepository.findAll();
////        }else {
////            resultList = bookRepository.findByNameContainingOrAuthorContaining(searchInput, searchInput);
////        }
////        model.addAttribute("bookList", resultList);
////        return "book/home";
////    }
////    @RequestMapping(value = "/newBook", method = RequestMethod.GET)
////    public String showNewBook(Model model){
////        model.addAttribute("book", new BookEntity());
////        model.addAttribute("msg", "Add a new book");
////        model.addAttribute("action", "newBook");
////
////        setCategoryDropDownlist(model);
////        return "book/book";
////    }
////
////    @RequestMapping(value = "/newBook", method = POST, produces = "text/plain;charset=UTF-8")
////    public String saveBook(BookEntity book){
////        bookRepository.save(book);
////        return "redirect:/";
////    }
////
////    @RequestMapping(value = "/edit/{id}", method = GET)
////    public String showEditBook(Model model, @PathVariable int id){
////        model.addAttribute("book", bookRepository.findById(id));
////        model.addAttribute("msg", "Update book information");
////        model.addAttribute("type", "update");
////        model.addAttribute("action", "/updateBook");
////
////        setCategoryDropDownlist(model);
////        return "book/book";
////    }
////    @RequestMapping(value = "/updateBook", method = POST)
////    public String updateBook(@ModelAttribute BookEntity book){
////        bookRepository.save(book);
////        return "redirect:/";
////
////    }
////    @RequestMapping(value = "/delete/{id}", method = GET)
////    public String deleteBook(@PathVariable  int id){
////        bookRepository.deleteById(id);
////        return "redirect:/";
////
////    }
////    @InitBinder
////    public void innitBinder(WebDataBinder binder){
////        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
////        sdf.setLenient(true);
////        binder.registerCustomEditor(Date.class, new CustomDateEditor(sdf, true));
////    }
//
//    private void setCategoryDropDownlist (Model model){
//        List<CategoryEntity> cateList = (List<CategoryEntity>) categoryRepository.findAll();
//        if (!cateList.isEmpty()){
//            Map<Integer, String> cateMap = new LinkedHashMap<>();
//            for (CategoryEntity categoryEntity : cateList){
//                cateMap.put(categoryEntity.getId(), categoryEntity.getName());
//            }
//            model.addAttribute("categoryList", cateMap);
//        }
//
//    }
//}