package com.mycompany.spring_mvc_project_final.entities;
import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;
@Entity
@Table(name = "product")
public class ProductEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="proId")
    private int proId;

    @Column (name="productName")
    private String productName;
    @Column (name="productDescription")
    private String productDescription;
    @Column (name="producer")
    private String producer;
    @Column (name="image")
    private String image;
    @Column (name="price")
    private double price;
    @OneToMany(mappedBy = "product", fetch = FetchType.LAZY)
    private List<OrderDetailEntity> orderDetailEntityList;

    public Integer getProId() {
        return proId;
    }
    public void setProId(int proId) {
        this.proId = proId;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getProductDescription() {
        return productDescription;
    }

    public void setProductDescription(String productDescription) {
        this.productDescription = productDescription;
    }

    public String getProducer() {
        return producer;
    }

    public void setProducer(String producer) {
        this.producer = producer;
    }
    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }


    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public List<OrderDetailEntity> getOrderDetailEntityList() {
        return orderDetailEntityList;
    }

    public void setOrderDetailEntityList(List<OrderDetailEntity> orderDetailEntityList) {
        this.orderDetailEntityList = orderDetailEntityList;
    }


}
