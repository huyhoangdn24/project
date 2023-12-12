//package com.mycompany.spring_mvc_project_final.controller;
//
//import com.mycompany.spring_mvc_project_final.entities.OrderDetailEntity;
//import com.mycompany.spring_mvc_project_final.entities.OrderEntity;
//import com.mycompany.spring_mvc_project_final.repository.OrderDetailRepository;
//import com.mycompany.spring_mvc_project_final.repository.OrderRepository;
//import com.mycompany.spring_mvc_project_final.repository.ProductRepository;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.PathVariable;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.web.bind.annotation.RequestParam;
//
//import java.util.List;
//@Controller
//public class OrderController {
//    @Autowired
//    OrderRepository orderRepository;
//    @Autowired
//    OrderDetailRepository orderDetailRepository;
//    @Autowired
//    ProductRepository productRepository;
//    @RequestMapping("/index")
//    public String index(){
//        return "index";
//    }
//    @RequestMapping("user/addBook")
//    public String addBook(Model model){
//        List<OrderEntity> orderList=(List<OrderEntity>)orderRepository.findAll();
//        model.addAttribute("orderList",orderList);
//        return "order/order";
//    }
//    @RequestMapping(value = "user/view/{id}",method = RequestMethod.GET)
//    public String viewOrder(Model model,@PathVariable int id){
//        List<OrderDetailEntity> orderDetailEntityList=orderDetailRepository.findByView(id);
//        model.addAttribute("orderDetailList",orderDetailEntityList);
//        return "order/orderDetail";
//    }
//    @RequestMapping(value = "search",method = RequestMethod.GET)
//    public String searchBook(@RequestParam("searchInput")String searchInput, Model model){
//        List<OrderEntity> reasultList;
//        if (searchInput.isEmpty()){
//            reasultList=(List<OrderEntity>)orderRepository.findAll();
//        }else {
//            reasultList=orderRepository.findBySearchInputContaining(searchInput);
//        }
//        model.addAttribute("orderList",reasultList);
//        return "order/order";
//    }
//
//}
