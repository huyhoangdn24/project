package com.mycompany.spring_mvc_project_final.entities;

import lombok.Data;

import javax.persistence.*;

@Entity
@Data
@Table(name = "orderdetails")
public class OrderDetailEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="orderDetailId")
    private int orderDetailId;
    @Column(name="quantity")
    private int quantity ;
    @ManyToOne
    @JoinColumn(name = "proId")
    private ProductEntity product;
    @ManyToOne
    @JoinColumn(name = "account_ID")
    private AccountEntity account;

    @ManyToOne
    @JoinColumn(name = "orderId")
    private OrderEntity orders;


    public int getOrderDetailId() {
        return orderDetailId;
    }

    public void setOrderDetailId(int orderDetailId) {
        this.orderDetailId = orderDetailId;
    }

    public int getQuantity(int i) {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public ProductEntity getProduct(ProductEntity product) {
        return this.product;
    }

    public void setProduct(ProductEntity product) {
        this.product = product;
    }


    public int getQuantity() {
        return quantity;
    }

    public ProductEntity getProduct() {
        return product;
    }

    public AccountEntity getAccount() {
        return account;
    }

    public OrderEntity getOrders(OrderEntity orders) {
        return this.orders;
    }

    public void setOrders(OrderEntity orders) {
        this.orders = orders;
    }

    public AccountEntity getAccount(AccountEntity acc) {
        return account;
    }

    public void setAccount(AccountEntity account) {
        this.account = account;
    }
}
