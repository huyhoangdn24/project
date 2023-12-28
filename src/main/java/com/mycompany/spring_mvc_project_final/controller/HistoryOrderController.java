package com.mycompany.spring_mvc_project_final.controller;

import com.mycompany.spring_mvc_project_final.entities.*;
import com.mycompany.spring_mvc_project_final.repository.AccountBankingRepository;
import com.mycompany.spring_mvc_project_final.repository.OrderDetailRepository;
import com.mycompany.spring_mvc_project_final.repository.OrderRepository;
import com.mycompany.spring_mvc_project_final.repository.PaymentRepository;
import com.mycompany.spring_mvc_project_final.service.AccountService;
import com.mycompany.spring_mvc_project_final.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Optional;

@Controller
public class HistoryOrderController {
    @Autowired
    OrderService orderService;
    @Autowired
    private AccountService accountService;
    @Autowired
    OrderRepository orderRepository;
    @Autowired
    OrderDetailRepository orderDetailRepository;
    @Autowired
    private PaymentRepository paymentRepository;
    @Autowired
    private AccountBankingRepository accountBankingRepository;

    @RequestMapping(value = {"/user/history"}, method = RequestMethod.GET)
    public String detailsuite(Model model, HttpSession session) {
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String username = principal.toString();

        if (principal instanceof UserDetails) {
            username = ((UserDetails) principal).getUsername();
            session.setAttribute("username", username);

        }
        String email = (String) session.getAttribute("username");
        AccountEntity account = accountService.findByEmail(email);
        Long accountId = account.getId();
        int intAccountId = accountId.intValue();
        Optional<PaymentEntity> paymentEntityList = (Optional<PaymentEntity>) paymentRepository.findById(intAccountId);
        System.out.println("List payment: " + paymentEntityList);
        Double amountPayment = (Double) session.getAttribute("amountPayment");
        // Lấy danh sách đơn hàng của người dùng
        List<OrderEntity> orderList = orderService.getBookingHistoryByAccountId(accountId);
        for (OrderEntity order : orderList) {
            order.getOrderDetailEntityList().size(); // Nạp OrderDetailEntityList
            // Lấy số lượng sản phẩm từ giỏ hàng
            List<OrderDetailEntity> orderDetails = (List<OrderDetailEntity>) session.getAttribute("cartItems");
            if (orderDetails != null) {
                for (OrderDetailEntity orderDetailEntityList : orderDetails) {
                    ProductEntity product = orderDetailEntityList.getProduct();
                    product.getPrice();
                    product.getProId();
                    product.getProductName();
                    orderDetailEntityList.getQuantity();

                }
            }
        }

        model.addAttribute("amountPayment", amountPayment);

        // Đưa danh sách vào model để sử dụng trong JSP
        model.addAttribute("orderList", orderList);

        return "historyorder";
    }
    @RequestMapping(value = {"/user/cancel/{orderId}"}, method = RequestMethod.POST)
    public String cancelroom(@PathVariable int orderId, Model model, HttpSession session) {
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String username = principal.toString();

        if (principal instanceof UserDetails) {
            username = ((UserDetails) principal).getUsername();
            session.setAttribute("username", username);

        }
        String email = (String) session.getAttribute("username");
        // Hủy phòng
        OrderEntity order = orderRepository.findById(orderId);
        order.setStatus("Cancel");
        orderRepository.save(order);
        // Tính hoàn tiền 80% cho khách
        PaymentEntity paymentEntity = paymentRepository.findByOrdersOrderId(orderId);
        double refundAmount = (80.0 / 100.0) * paymentEntity.getPaymentAmount();
        // Hoàn tiền vào tài khoản khách
        AccountBankingEntity accountBanking = accountBankingRepository.findByAccountId(order.getAccount().getId());
        accountBanking.setBalance(accountBanking.getBalance() + refundAmount);
        accountBankingRepository.save(accountBanking);
        // Hoàn tiền 20% đơn hàng
        paymentEntity.setPaymentAmount(paymentEntity.getPaymentAmount() - refundAmount);
        paymentRepository.save(paymentEntity);
        return "redirect:/user/history";
    }
}
