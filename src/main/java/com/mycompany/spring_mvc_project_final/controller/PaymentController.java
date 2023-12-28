package com.mycompany.spring_mvc_project_final.controller;
import com.mycompany.spring_mvc_project_final.entities.*;
import com.mycompany.spring_mvc_project_final.repository.*;
import com.mycompany.spring_mvc_project_final.service.AccountBankingService;
import com.mycompany.spring_mvc_project_final.service.DiscountService;
import com.mycompany.spring_mvc_project_final.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.text.DecimalFormat;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Controller
public class PaymentController {

    @Autowired
    private AccountBankingService accountBankingService;
    @Autowired
    private  CategoryRepository categoryRepository;
    @Autowired
    private DiscountService discountService;
    @Autowired
    private ProductRepository productRepository;
    @Autowired
    private AccountRepository accountRepository;
    @Autowired
    private OrderDetailRepository orderDetailRepository;
    @Autowired
    private PaymentRepository paymentRepository;
    @Autowired
    private JavaMailSender javaMailSender;
    @Autowired
    OrderRepository orderRepository;
    @Autowired
    ProductService productService;


    @RequestMapping(value = {"/user/payment"}, method = RequestMethod.GET)
    public String showPaymentForm(Model model, HttpSession session) {
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String username = principal.toString();
        if (principal instanceof UserDetails) {
            username = ((UserDetails) principal).getUsername();
            session.setAttribute("username", username);

        }
        ProductEntity product = (ProductEntity) session.getAttribute("product");
        List<OrderDetailEntity> orderDetailEntityList = (List<OrderDetailEntity> ) session.getAttribute("cartItems");

        Double cartTotal = (Double) session.getAttribute("cartTotal");
        System.out.println("proId:" + product.getProId());
        System.out.println("cartTotal:" + cartTotal);

            product.setOrderDetailEntityList(orderDetailEntityList);
//            CategoryEntity category = categoryRepository.findByCategoryId(categoryId);
            model.addAttribute("cartTotal", cartTotal);
            model.addAttribute("product", product);


        return "payment";
    }



    @RequestMapping(value = {"/user/payment"}, method = RequestMethod.POST)
    public String processPayment(
            @RequestParam("paymentType") String paymentType,
            @RequestParam("bank") String bank,
            @RequestParam("numberCard") String numberCard,
            @RequestParam("code") String code,
            Model model, HttpSession session
    ) {
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String username = principal.toString();
        if (principal instanceof UserDetails) {
            username = ((UserDetails) principal).getUsername();
            session.setAttribute("username", username);
        }
        String email = (String) session.getAttribute("username");
        Long accountId = accountBankingService.getAccountIdByUsername(email);
        // Lấy thông tin bank theo accountId
        AccountBankingEntity accountBanking = accountBankingService.getAccountBankingByAccountId(accountId);
        //Lấy mã giảm giá
        DiscountEntity discountEntity = discountService.getDiscountByCode(code);
        try {
            int number = Integer.parseInt(numberCard);
            if (
                    paymentType.equals(accountBanking.getPaymentType()) &&
                            bank.equals(accountBanking.getBank()) &&
                            number == accountBanking.getNumberCard()) {

                ProductEntity product = (ProductEntity) session.getAttribute("product");
                List<OrderDetailEntity> orderDetailEntityList = (List<OrderDetailEntity> ) session.getAttribute("cartItems");
                Double cartTotal = (Double) session.getAttribute("cartTotal");
                product.setOrderDetailEntityList(orderDetailEntityList);
                double discountAmount = (discountEntity != null) ? discountEntity.getDiscountAmount() : 0;
                System.out.println("Giảm giá: " + discountAmount);
                model.addAttribute("price", cartTotal * ((100 - discountAmount)) / 100);
                String name = accountBanking.getName();
                System.out.println("NameNganHang: " + name);
                model.addAttribute("name", name);
                model.addAttribute("paymentType", accountBanking.getPaymentType());
                model.addAttribute("bank", accountBanking.getBank());
                model.addAttribute("numberCard", accountBanking.getNumberCard());
                model.addAttribute("code", code);
                model.addAttribute("product", product);
            } else {
                ProductEntity product = (ProductEntity) session.getAttribute("product");
                List<OrderDetailEntity> orderDetailEntityList = (List<OrderDetailEntity> ) session.getAttribute("cartItems");
                Double cartTotal = (Double) session.getAttribute("cartTotal");
                product.setOrderDetailEntityList(orderDetailEntityList);
                model.addAttribute("cartTotal", cartTotal);
                String errorMessage = "Thông tin thanh toán không chính xác. Vui lòng kiểm tra lại!";
                model.addAttribute("errorMessage", errorMessage);
                model.addAttribute("product", product);
            }

        } catch (NumberFormatException e) {
            ProductEntity product = (ProductEntity) session.getAttribute("product");
            List<OrderDetailEntity> orderDetailEntityList = (List<OrderDetailEntity> ) session.getAttribute("cartItems");
            Double cartTotal = (Double) session.getAttribute("cartTotal");
            product.setOrderDetailEntityList(orderDetailEntityList);
            model.addAttribute("cartTotal", cartTotal);
            String errorMessage = "Thông tin thanh toán không chính xác. Vui lòng kiểm tra lại!";
            model.addAttribute("errorMessage", errorMessage);
            model.addAttribute("product", product);
        }
        return "payment";
    }


    @RequestMapping(value = {"/user/processPayment"}, method = RequestMethod.POST)
    public String paymentsuccess(@RequestParam("code") String code,
                                 Model model, HttpSession session) {
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String username = principal.toString();

        if (principal instanceof UserDetails) {
            username = ((UserDetails) principal).getUsername();
            session.setAttribute("username", username);
        }
        String email = (String) session.getAttribute("username");
        Long accountId = accountBankingService.getAccountIdByUsername(email);
        // Lấy thông tin bank theo accountId
        AccountBankingEntity accountBanking = accountBankingService.getAccountBankingByAccountId(accountId);
        //Lấy mã giảm giá
        DiscountEntity discountEntity = discountService.getDiscountByCode(code);
        ProductEntity product = (ProductEntity) session.getAttribute("product");
        List<OrderDetailEntity> orderDetailEntityList = (List<OrderDetailEntity> ) session.getAttribute("cartItems");
        int quantityPurchased = 0;
        if (orderDetailEntityList != null) {
            quantityPurchased = orderDetailEntityList.stream()
                    .mapToInt(OrderDetailEntity::getQuantity)
                    .sum();
        }
        Double cartTotal = (Double) session.getAttribute("cartTotal");
        product.setOrderDetailEntityList(orderDetailEntityList);
        // Lấy giá cần thanh toán
        double discountAmount = (discountEntity != null) ? discountEntity.getDiscountAmount() : 0;
        double amountPayment = (cartTotal) * ((100 - discountAmount)) / 100;
        double amount = accountBanking.getBalance();
        double amountFinish = amount - amountPayment;
        boolean paymentSuccess = accountBankingService.processPayment(accountBanking, amountPayment);
        if (paymentSuccess) {
            System.out.println("Thanh toán thành công");
            OrderEntity orderEntity = new OrderEntity();
            orderEntity.setProductName(orderEntity.getProductName());
            orderEntity.setCustomerName(orderEntity.getCustomerName());
            orderEntity.setStatus("Order");
            AccountEntity accountEntity = accountRepository.findByEmail(email);
            orderEntity.setAccount(accountEntity);
            orderEntity.setOrderDate(LocalDate.now());
            orderRepository.save(orderEntity);
            System.out.println("Giá trị ID vừa tạo là: " + orderEntity.getOrderId());

            // Create and save OrderDetailEntity
            OrderDetailEntity orderDetailEntity = new OrderDetailEntity();
            for (OrderDetailEntity orderDetail : orderDetailEntityList) {
                orderDetailEntity.setQuantity(quantityPurchased);
                orderDetailEntity.setAccount(accountEntity);
                orderDetailEntity.setOrders(orderEntity);
                orderDetailEntity.setProduct(product);
                orderDetailRepository.save(orderDetailEntity);
            }
            // Lưu payment
            PaymentEntity paymentEntity = new PaymentEntity();
            paymentEntity.setDate(new Date());
            paymentEntity.setName(accountBanking.getName());
            paymentEntity.setPaymentAmount(amountPayment);
            paymentEntity.setOrders(orderEntity);
            paymentRepository.save(paymentEntity);
            // Lưu session cần thiết
            session.setAttribute("amountPayment", amountPayment);
            model.addAttribute("accountEntity", accountEntity);
            model.addAttribute("orderDetailEntity", orderDetailEntity);
            model.addAttribute("productName", orderEntity.getProductName());
            model.addAttribute("amountPayment", amountPayment);
            String success = "Thanh toán thành công";
            model.addAttribute("success",success);
            return "redirect:/user/mail";
        } else {
            String fail = "Thanh toán thất bại: Số dư không đủ";
            model.addAttribute("fail",fail);
        }

        return "payment";
    }

    @RequestMapping(value = {"/user/mail"}, method = RequestMethod.GET)
    public String testSendMail(ModelAndView model, HttpSession session) throws IOException {
        // Send mail
        String userName = (String) session.getAttribute("username");
        AccountEntity accountEntity = accountRepository.findByEmail(userName);
        List<OrderDetailEntity> orderDetailEnittyList = (List<OrderDetailEntity>) session.getAttribute("cartItems");
        ProductEntity product = (ProductEntity) session.getAttribute("proId");
        String NameKH = accountEntity.getName();
        String EmailKH = accountEntity.getEmail();
        int SDTKH = accountEntity.getPhone();
        double amountPayment = (double) session.getAttribute("amountPayment");
        double price = (Double) session.getAttribute("cartTotal");
        double priceAmount = price - amountPayment;
        double priceAmountPay = amountPayment;
        DecimalFormat decimalFormat = new DecimalFormat("###,###,### VNĐ");
        String formattedPrice = decimalFormat.format(price);
        String formattedPriceAmount = decimalFormat.format(priceAmount);
        String formattedPriceAmountPay = decimalFormat.format(priceAmountPay);
        String email = "nguyenhuyhoangtp24@gmail.com";
        String emailContent = "<p>Chào <strong>[NameKH]</strong>,</p>" +
                "<p>Chúc mừng! Đặt hàng COZA STORE của bạn tại COZA STORE đã được xác nhận thành công.</p>" +
                "<p>Dưới đây là chi tiết đặt hàng của bạn:</p>" +
                "<ul>" +
                "   <li>Email: <strong>[Email]</strong></li>" +
                "   <li>Số điện thoại: <strong>[Phone]</strong></li>" +
                "   <li>Giá: <strong>[priceOrder]</strong></li>" +
                "   <li>Khuyến mãi: <strong>[promo]</strong></li>" +
                "   <li>Số tiền đã thanh toán: <strong>[priceKH]</strong></li>" +
                "</ul>" +
                "<p>Vui lòng kiểm tra lại các thông tin trên. Nếu có bất kỳ sai sót hoặc thắc mắc, hãy liên hệ với chúng tôi ngay lập tức.</p>" +
                "<p>Chúng tôi mong đợi sự chờ đón bạn tại COZA STORE. Nếu bạn có bất kỳ yêu cầu đặc biệt nào khác, hãy thông báo trước để chúng tôi có thể phục vụ bạn tốt nhất.</p>" +
                "<p>Cảm ơn bạn đã chọn COZA STORE. Chúng tôi rất mong đợi chờ đón bạn và hy vọng bạn có được những sản phẩm chất lượng !</p>" +
                "<p>Trân trọng,<br>COZA STORE</p>";

// Thực hiện thay thế
        emailContent = emailContent.replace("[NameKH]", NameKH);
        emailContent = emailContent.replace("[Email]", EmailKH);
        emailContent = emailContent.replace("[Phone]", String.valueOf(SDTKH));
        emailContent = emailContent.replace("[priceOrder]", formattedPrice);
        emailContent = emailContent.replace("[promo]", formattedPriceAmount);
        emailContent = emailContent.replace("[priceKH]", formattedPriceAmountPay);
        sendEmail(email, "Xác nhận Đặt hàng  thành công tại COZA STORE", emailContent);
        model.addObject("msg", email);
        return "success";
//        return "index";
    }
    public void sendEmail(String recipient, String subject, String body) {
        MimeMessage message = javaMailSender.createMimeMessage();
        try {
            MimeMessageHelper helper = new MimeMessageHelper(message, true, "UTF-8");
            helper.setTo(recipient);
            helper.setSubject(subject);
            helper.setText(body, true);
            javaMailSender.send(message);
        } catch (MessagingException e) {
            e.printStackTrace();
        }
    }
}

