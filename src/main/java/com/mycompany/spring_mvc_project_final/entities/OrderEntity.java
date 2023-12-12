package com.mycompany.spring_mvc_project_final.entities;


        import org.springframework.format.annotation.DateTimeFormat;

        import javax.persistence.*;
        import java.time.LocalDate;
        import java.util.ArrayList;
        import java.util.Date;
        import java.util.List;

@Entity
@Table(name = "orders")
public class OrderEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "orderId")
    private int orderId;
    @Column(name = "orderDate")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate orderDate;
    @Column (name="productName")
    private String productName;
    @Column(name = "customerName")
    private String customerName;
    @OneToMany(mappedBy = "orders", fetch = FetchType.LAZY)
    private  List<PaymentEntity> paymentEntityList;
    @OneToMany(mappedBy = "orders", fetch = FetchType.LAZY)
    private List<OrderDetailEntity> orderDetailEntityList ;
    @OneToOne(cascade = {CascadeType.ALL})
    @PrimaryKeyJoinColumn
    private DiscountEntity discount;

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    public LocalDate getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(LocalDate orderDate) {
        this.orderDate = orderDate;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getCustomerName() {
        return customerName;
    }

    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    public List<PaymentEntity> getPaymentEntityList() {
        return paymentEntityList;
    }

    public void setPaymentEntityList(List<PaymentEntity> paymentEntityList) {
        this.paymentEntityList = paymentEntityList;
    }

    public List<OrderDetailEntity> getOrderDetailEntityList() {
        return orderDetailEntityList;
    }

    public void setOrderDetailEntityList(List<OrderDetailEntity> orderDetailEntityList) {
        this.orderDetailEntityList = orderDetailEntityList;
    }

    public DiscountEntity getDiscount() {
        return discount;
    }

    public void setDiscount(DiscountEntity discount) {
        this.discount = discount;
    }
}
