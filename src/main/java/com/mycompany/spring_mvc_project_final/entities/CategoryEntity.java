package com.mycompany.spring_mvc_project_final.entities;

import lombok.Data;

import javax.persistence.*;

@Entity
@Data
@Table(name = "category")
public class CategoryEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="categoryId")
    private int categoryId;
    @Column(name="categoryName")
    private String categoryName;
    @Column(name="categoryDescription")
    private String categoryDescription;

}
