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
    private int quantity;
    @ManyToOne
    @JoinColumn(name = "orderId")
    private OrderEntity order;
    @ManyToOne
    @JoinColumn(name = "proId")
    private ProductEntity product;

    public int getOrderDetailId() {
        return orderDetailId;
    }

    public void setOrderDetailId(int orderDetailId) {
        this.orderDetailId = orderDetailId;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public OrderEntity getOrder() {
        return order;
    }

    public void setOrder(OrderEntity order) {
        this.order = order;
    }

    public ProductEntity getProduct() {
        return product;
    }

    public void setProduct(ProductEntity product) {
        this.product = product;
    }
}
