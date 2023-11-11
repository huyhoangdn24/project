package com.mycompany.spring_mvc_project_final.repository;

import com.mycompany.spring_mvc_project_final.entities.OrderDetailEntity;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface OrderDetailRepository extends CrudRepository<OrderDetailEntity,Integer> {
    @Query(value = "SELECT * " +
            "FROM orderDetails  " +
            "where orderId like %?1%"
            ,nativeQuery = true)
    List<OrderDetailEntity> findByView(int id);
}
