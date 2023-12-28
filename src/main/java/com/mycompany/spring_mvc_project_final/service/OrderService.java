package com.mycompany.spring_mvc_project_final.service;

import com.mycompany.spring_mvc_project_final.entities.OrderDetailEntity;
import com.mycompany.spring_mvc_project_final.entities.OrderEntity;
import com.mycompany.spring_mvc_project_final.repository.OrderDetailRepository;
import com.mycompany.spring_mvc_project_final.repository.OrderRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrderService {
    @Autowired
    OrderRepository orderRepository;
    @Autowired
    OrderDetailRepository orderDetailRepository;
    public List<OrderEntity> getBookingHistoryByAccountId(Long accountId) {
// Get list of BookingEntity by accountId
        List<OrderEntity> orderList = orderRepository.findByAccount_Id(accountId);

        // For each BookingEntity, fetch the related BookingDetailsEntity
        for (OrderEntity order : orderList) {
            List<OrderDetailEntity> detailsList = orderDetailRepository.findByOrders_OrderId(order.getOrderId());
            order.setOrderDetailEntityList(detailsList);
        }

        return orderList;
    }
}
