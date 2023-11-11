package com.mycompany.spring_mvc_project_final.service;

import com.mycompany.spring_mvc_project_final.entities.ProductEntity;
import com.mycompany.spring_mvc_project_final.repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class ProductServiceImpl implements ProductService{
    @Autowired
    private ProductRepository productRepository;



    @Override
    public List<ProductEntity> getAll() {
        return (List<ProductEntity>) productRepository.findAll();
    }

public  static List<ProductEntity> ls = new ArrayList<>();
    @Override
    public int add(ProductEntity p) {
        return 0;
    }

    @Override
    public int remove(int id) {
        return 0;
    }


}
