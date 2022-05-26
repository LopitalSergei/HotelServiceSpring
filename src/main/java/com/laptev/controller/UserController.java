package com.laptev.controller;

import com.laptev.service.OrderService;
import com.laptev.service.RequestService;
import com.laptev.service.UserService;
import lombok.AllArgsConstructor;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@AllArgsConstructor
public class UserController {

    RequestService requestService;

    OrderService orderService;

    UserService userService;

    @GetMapping("/myRequests")
    public String myRequests(Model model){
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        String currentName = authentication.getName();
        model.addAttribute("myRequests", requestService.findRequestsByUserId(userService.findUserByUsername(currentName).getId()));
        return "myRequests";
    }

    @GetMapping("/myOrders")
    public String myOrders(Model model){
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        String currentName = authentication.getName();
        model.addAttribute("myOrders", orderService.findOrdersByUserId(userService.findUserByUsername(currentName).getId()));
        return "myOrders";
    }
}
