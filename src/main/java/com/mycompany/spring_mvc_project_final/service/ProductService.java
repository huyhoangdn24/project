package com.mycompany.spring_mvc_project_final.service;

import com.mycompany.spring_mvc_project_final.entities.ProductEntity;

import java.util.List;

public interface ProductService {
     public int add(ProductEntity p);
     public int remove(int id);
     public List<ProductEntity> getAll();
}
