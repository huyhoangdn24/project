package com.mycompany.spring_mvc_project_final.repository;

import com.mycompany.spring_mvc_project_final.entities.OrderDetailEntity;
import com.mycompany.spring_mvc_project_final.entities.ProductEntity;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import java.util.Collection;
import java.util.List;

public interface OrderDetailRepository extends CrudRepository<OrderDetailEntity,Integer> {
    OrderDetailEntity findByorderDetailId(int orderDetailId);;
    List<OrderDetailEntity> findByOrders_OrderId(int orderId);


}
