package com.mycompany.spring_mvc_project_final.repository;

import com.mycompany.spring_mvc_project_final.entities.OrderEntity;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface OrderRepository extends CrudRepository<OrderEntity,Integer> {
    @Query(value = "SELECT DISTINCT o.id, o.orderDate, o.customerName " +
            "FROM orders o left join orderDetails o1 " +
            "on o.id = o1.orderId " +
            "left join products p " +
            "on o1.proId = p.id " +
            "where o.customerName like %?1% or o.orderDate like %?1% or p.prName like %?1% "
            , nativeQuery = true)
    List<OrderEntity> findBySearchInputContaining(String searchInput);
}
