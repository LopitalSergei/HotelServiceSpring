package com.laptev.service;

import com.laptev.entity.Order;
import com.laptev.repository.OrderRepository;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@AllArgsConstructor
public class OrderService {

    private final OrderRepository orderRepository;

    public void saveOrder(Order order){
        orderRepository.save(order);
    }
}
