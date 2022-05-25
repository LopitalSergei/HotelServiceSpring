package com.laptev.service;

import com.laptev.entity.Request;
import com.laptev.entity.User;
import com.laptev.repository.RequestRepository;
import com.laptev.repository.UserRepository;
import lombok.AllArgsConstructor;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@AllArgsConstructor
public class RequestService {

    private final RequestRepository requestRepository;

    private final UserRepository userRepository;

    public void saveRequest(Request request){

        User user = userRepository.findByUsername(getCurrentUsername());
        request.setUser(user);
        requestRepository.save(request);
    }

    public List<Request> allRequests(){
        return requestRepository.findAll();
    }

    public String getCurrentUsername() {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        return auth.getName();
    }
}
