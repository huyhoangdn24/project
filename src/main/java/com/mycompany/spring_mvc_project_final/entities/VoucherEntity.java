package com.mycompany.spring_mvc_project_final.entities;

import lombok.Data;

import javax.persistence.*;
import java.util.Date;

@Entity
@Data
@Table(name = "voucher")
public class VoucherEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="voucherId")
    private int voucherId;
    @Column(name="valueOfVoucher")
    private double valueOfVoucher;
    @Column(name="initianedDate")
    private Date initianedDate;
    @Column(name="expirationDate")
    private Date expirationDate;

}
