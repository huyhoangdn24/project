package com.mycompany.spring_mvc_project_final.entities;

import lombok.Data;

import javax.persistence.*;
import java.util.Date;

@Entity
@Data
@Table(name = "user")
public class UserEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    @Column(name="USER_NAME", length=50, nullable=false, unique=false)
    private String name;
    @Column(name="DOB")
    private Date DOB;
    @Column(name="address", length = 255 , nullable = false,unique = false)
    private  String address;
    @Column(name="PHONE_NUMBER", length = 255 , nullable = false,unique = false)
    private  String phoneNumber;
    @Column (name="email")
    private String email;

}
