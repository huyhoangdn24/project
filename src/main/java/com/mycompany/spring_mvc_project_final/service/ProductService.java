package com.mycompany.spring_mvc_project_final.service;

import com.mycompany.spring_mvc_project_final.entities.ProductEntity;
import com.mycompany.spring_mvc_project_final.repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProductService {
    @Autowired
    ProductRepository productRepository;
    public ProductEntity findByproId(int proId){

        return productRepository.findByproId(proId);
    }
    public void decreaseStock(ProductEntity product, int quantityToReduce) {
        if (product.getQuantityInStock() >= quantityToReduce) {
            product.setQuantityInStock(product.getQuantityInStock() - quantityToReduce); // Giảm số lượng sản phẩm trong kho

            productRepository.save(product); // Lưu thông tin sản phẩm sau khi giảm số lượng vào cơ sở dữ liệu
        } else {
            throw new IllegalArgumentException("Số lượng sản phẩm không đủ để giảm.");
        }
    }


}
