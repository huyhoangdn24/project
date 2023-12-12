//package com.mycompany.spring_mvc_project_final.controller;
//
//import com.mycompany.spring_mvc_project_final.entities.*;
//import com.mycompany.spring_mvc_project_final.repository.AccountRepository;
//import com.mycompany.spring_mvc_project_final.repository.OrderDetailRepository;
//import com.mycompany.spring_mvc_project_final.repository.PaymentRepository;
//import com.mycompany.spring_mvc_project_final.repository.ProductRepository;
//import com.mycompany.spring_mvc_project_final.service.AccountBankingService;
//import com.mycompany.spring_mvc_project_final.service.DiscountService;
//import com.mycompany.spring_mvc_project_final.service.ProductService;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.mail.javamail.JavaMailSender;
//import org.springframework.security.core.context.SecurityContextHolder;
//import org.springframework.security.core.userdetails.UserDetails;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.web.bind.annotation.RequestParam;
//
//import javax.servlet.http.HttpSession;
//import java.util.Date;
//
//@Controller
//public class PaymentController {
//
//    @Autowired
//    private AccountBankingService accountBankingService;
//    @Autowired
//    private ProductService productService;
//    @Autowired
//    private DiscountService discountService;
//    @Autowired
//    private ProductRepository productRepository;
//    @Autowired
//    private AccountRepository accountRepository;
//    @Autowired
//    private OrderDetailRepository orderDetailRepository;
//    @Autowired
//    private PaymentRepository paymentRepository;
//    @Autowired
//    private JavaMailSender javaMailSender;
//
//    @RequestMapping(value = {"/user/payment"}, method = RequestMethod.GET)
//    public String showPaymentForm(Model model, HttpSession session) {
//        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
//        String username = principal.toString();
//
//        if (principal instanceof UserDetails) {
//            username = ((UserDetails) principal).getUsername();
//            session.setAttribute("username", username);
//
//        }
//        Integer proId = (Integer) session.getAttribute("proId");
//        ProductEntity product = productService.findByproId(proId);
//        model.addAttribute("price", product.getPrice());
//        return "payment";
//    }
//
//    @RequestMapping(value = {"/user/payment"}, method = RequestMethod.POST)
//    public String processPayment(
//            @RequestParam("paymentType") String paymentType,
//            @RequestParam("bank") String bank,
//            @RequestParam("numberCard") String numberCard,
//            @RequestParam("code") String code,
//            Model model, HttpSession session
//    ) {
//        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
//        String username = principal.toString();
//
//        if (principal instanceof UserDetails) {
//            username = ((UserDetails) principal).getUsername();
//            session.setAttribute("username", username);
//
//        }
//        String email = (String) session.getAttribute("username");
//        Long accountId = accountBankingService.getAccountIdByUsername(email);
//
//        // Lấy thông tin bank theo accountId
//        AccountBankingEntity accountBanking = accountBankingService.getAccountBankingByAccountId(accountId);
//        //Lấy mã giảm giá
//        DiscountEntity discountEntity = discountService.getDiscountByCode(code);
//
//        try {
//            int number = Integer.parseInt(numberCard);
//            if (
//                    paymentType.equals(accountBanking.getPaymentType()) &&
//                            bank.equals(accountBanking.getBank()) &&
//                            number == accountBanking.getNumberCard()) {
//
//                Integer proId = (Integer) session.getAttribute("proId");
//                ProductEntity product = productService.findByproId(proId);
//                double discountAmount = (discountEntity != null) ? discountEntity.getDiscountAmount() : 0;
//                System.out.println("Giảm giá: " + discountAmount);
//                model.addAttribute("price", (product.getPrice()) * ((100 - discountAmount)) / 100);
//                String name = accountBanking.getName();
//                System.out.println("NameNganHang: " + name);
//                model.addAttribute("name", name);
//                model.addAttribute("paymentType", accountBanking.getPaymentType());
//                model.addAttribute("bank", accountBanking.getBank());
//                model.addAttribute("numberCard", accountBanking.getNumberCard());
//                model.addAttribute("code", code);
//            } else {
//                Integer proId = (Integer) session.getAttribute("proId");
//                ProductEntity product = productService.findByproId(proId);
//                model.addAttribute("price", product.getPrice());
//                String errorMessage = "Thông tin thanh toán không chính xác. Vui lòng kiểm tra lại!";
//                model.addAttribute("errorMessage", errorMessage);
//            }
//
//        } catch (NumberFormatException e) {
//            Integer proId = (Integer) session.getAttribute("proId");
//            ProductEntity product = productService.findByproId(proId);
//            model.addAttribute("price", product.getPrice());
//            String errorMessage = "Thông tin thanh toán không chính xác. Vui lòng kiểm tra lại!";
//            model.addAttribute("errorMessage", errorMessage);
//        }
//        return "payment";
//    }
//
//    @RequestMapping(value = {"/user/processPayment"}, method = RequestMethod.POST)
//    public String paymentsuccess(@RequestParam("code") String code,
//                                 Model model, HttpSession session) {
//        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
//        String username = principal.toString();
//
//        if (principal instanceof UserDetails) {
//            username = ((UserDetails) principal).getUsername();
//            session.setAttribute("username", username);
//
//        }
//        String email = (String) session.getAttribute("username");
//        Long accountId = accountBankingService.getAccountIdByUsername(email);
//        // Lấy thông tin bank theo accountId
//        AccountBankingEntity accountBanking = accountBankingService.getAccountBankingByAccountId(accountId);
//        //Lấy mã giảm giá
//        DiscountEntity discountEntity = discountService.getDiscountByCode(code);
//        //Lấy category
//        // Xử lí nếu kiểm tra thông tin
//        Integer proId = (Integer) session.getAttribute("proId");
//        ProductEntity product = productService.findByproId(proId);
//        // Lấy giá cần thanh toán
//        double discountAmount = (discountEntity != null) ? discountEntity.getDiscountAmount() : 0;
//        double amountPayment = (product.getPrice()) * ((100 - discountAmount)) / 100;
//        double amount = accountBanking.getBalance();
//        double amountFinish = amount - amountPayment;
//        boolean paymentSuccess = accountBankingService.processPayment(accountBanking, amountPayment);
//        if (paymentSuccess) {
//            ProductEntity productEntity = new ProductEntity();
//            productEntity.setProId(proId);
//            productEntity.setProductName(product.getProductName());
//            productEntity.setImage(product.getImage());
//            AccountEntity accountEntity = accountRepository.findByEmail(email);
//            productEntity.
//            // Lưu payment
//
//        }
//
//    }
//}
//
