package com.mycompany.spring_mvc_project_final.controller;

import com.mycompany.spring_mvc_project_final.entities.AccountEntity;
import com.mycompany.spring_mvc_project_final.entities.OrderDetailEntity;
import com.mycompany.spring_mvc_project_final.entities.OrderEntity;
import com.mycompany.spring_mvc_project_final.entities.ProductEntity;
import com.mycompany.spring_mvc_project_final.repository.AccountRepository;
import com.mycompany.spring_mvc_project_final.repository.OrderDetailRepository;
import com.mycompany.spring_mvc_project_final.repository.OrderRepository;
import com.mycompany.spring_mvc_project_final.repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Optional;

@Controller
public class OrderDetailController {
    @Autowired
    ProductRepository productRepository;
    @Autowired
    AccountRepository accountRepository;
    @Autowired
    OrderDetailRepository orderDetailRepository;
    @Autowired
    OrderRepository orderRepository;
    @RequestMapping(value = "/shopping-cart/{proId}", method = RequestMethod.GET)
    public String viewCart(Model model,@PathVariable int proId, HttpServletRequest request) {
        HttpSession session=request.getSession();
        String account=(String) session.getAttribute("username");
        AccountEntity acc=accountRepository.findByEmail(account);
        ProductEntity product=productRepository.findByproId(proId);
        OrderEntity orders = orderRepository.findByorderId(proId);
        // Lấy danh sách sản phẩm đã thêm vào giỏ hàng từ Session (nếu có)
        List<OrderDetailEntity> orderDetailEnittyList = (List<OrderDetailEntity>) session.getAttribute("cartItems");
        if (orderDetailEnittyList == null) {
            orderDetailEnittyList = new ArrayList<>();
        }
        boolean found = false;
        for (OrderDetailEntity item : orderDetailEnittyList) {
            if (item.getProduct().getProId() == proId) {
                // Nếu sản phẩm đã tồn tại trong giỏ hàng, tăng số lượng lên
                item.setQuantity(item.getQuantity() + 1);
                found = true;
                break;
            }
        }
        if (!found) {
            OrderDetailEntity ob = new OrderDetailEntity();
            ob.setProduct(product);
            ob.setOrders(orders);
            ob.setAccount(acc);
            ob.setQuantity(1);
            orderDetailEnittyList.add(ob);
        }
        double total = 0.0;
        for (OrderDetailEntity item : orderDetailEnittyList) {
            total += item.getProduct().getPrice() * item.getQuantity();
        }
        session.setAttribute("cartItems", orderDetailEnittyList);
        session.setAttribute("cartTotal", total);
        session.setAttribute("product", product);
        model.addAttribute("orderDetailEnittyList",orderDetailEnittyList);
        model.addAttribute("cartTotal", total);
        return "shopping-cart";
    }

    @RequestMapping(value = "/delete/{proId}", method = RequestMethod.GET)
    public String removeFromCart(@PathVariable int proId, HttpSession session) {
        List<OrderDetailEntity> orderDetailEntityList = (List<OrderDetailEntity>) session.getAttribute("cartItems");

        if (orderDetailEntityList != null && !orderDetailEntityList.isEmpty()) {
            orderDetailEntityList.removeIf(item -> item.getProduct().getProId() == proId);

            session.setAttribute("cartItems", orderDetailEntityList);

            double total = 0.0;
            for (OrderDetailEntity item : orderDetailEntityList) {
                total += item.getProduct().getPrice() * item.getQuantity();
            }

            session.setAttribute("cartTotal", total);
        }

        return "redirect:/product";
    }






}
