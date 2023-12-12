package com.mycompany.spring_mvc_project_final.repository;

import com.mycompany.spring_mvc_project_final.entities.ProductEntity;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ProductRepository extends CrudRepository<ProductEntity,Long> {
    @Query(value = "SELECT * " +
            "FROM product " +
            "where productName like %?1% or price like %?1% or producer like %?1% "
            , nativeQuery = true)
    List<ProductEntity> findBySearchInputContaining(String searchInput);
    @Query(value = "SELECT * " +
            "FROM product " +
            "LIMIT 10"
            , nativeQuery = true)
    List<ProductEntity> findByView();
    ProductEntity  findByproId(int proId);;

//    ProductEntity findByName(String productName);


}
