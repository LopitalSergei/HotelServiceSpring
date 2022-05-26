package com.laptev.repository;

import com.laptev.entity.Order;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface OrderRepository extends JpaRepository<Order, Long> {
    List<Order> findOrdersByUserName(String name);
    List<Order> findOrdersByUserId(Long id);
}
