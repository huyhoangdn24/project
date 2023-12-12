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
    @RequestMapping(value = "/add/{proId}", method = RequestMethod.GET)
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
        session.setAttribute("cartItems", orderDetailEnittyList);
        model.addAttribute("orderDetailEnittyList",orderDetailEnittyList);
        return "shopping-cart";
    }


    @RequestMapping(value = "/delete/{proId}", method = RequestMethod.GET)
    public String removeFromCart(@PathVariable int proId, HttpServletRequest request, Model model) {
        HttpSession session = request.getSession();
        List<OrderDetailEntity> orderDetailEntityList = (List<OrderDetailEntity>) session.getAttribute("cartItems");
        if (orderDetailEntityList != null) {
            // Tìm và xóa sản phẩm có proId tương ứng
            boolean removed = orderDetailEntityList.removeIf(orderDetail -> orderDetail.getProduct().getProId() == proId);
            if (removed) {
                session.setAttribute("cartItems", orderDetailEntityList); // Cập nhật giỏ hàng trong Session nếu có sản phẩm được xóa
            }
        }
        return "shopping-cart"; // Trả về view để hiển thị giỏ hàng
    }


}
