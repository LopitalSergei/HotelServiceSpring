package com.laptev.repository;

import com.laptev.entity.Request;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface RequestRepository extends JpaRepository<Request, Long> {
    List<Request> findRequestsByUserName(String name);
    List<Request> findRequestsByUserId(Long id);
}
