package com.laptev.controller;

import com.laptev.entity.Request;
import com.laptev.entity.RequestStatus;
import com.laptev.service.RequestService;
import com.laptev.service.UserService;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
import java.util.List;

@Controller
@AllArgsConstructor
public class AdminController {

    private final UserService userService;

    private final RequestService requestService;

    @GetMapping("/admin")
    public String userList(Model model) {
        model.addAttribute("allUsers", userService.allUsers());
        return "admin";
    }

    @GetMapping("/adminRequest")
    public String requests(Model model){
        List<Request> allRequests = requestService.allRequests();
        List<Request> requests = new ArrayList<>();
        for (Request allRequest : allRequests) {
            if (allRequest.getRequestStatus().equals(RequestStatus.IN_PROGRESS)) {
                requests.add(allRequest);
            }
        }
        model.addAttribute("allRequests", requests);
        return "adminRequest";
    }

    @PostMapping("/admin")
    public String deleteUser(@RequestParam(required = true, defaultValue = "") Long userId,
                             @RequestParam(required = true, defaultValue = "") String action,
                             Model model) {
        if (action.equals("delete")) {
            userService.deleteUser(userId);
        }
        return "redirect:/admin";
    }

    @GetMapping("/admin/gt/{userId}")
    public String gtUser(@PathVariable("userId") Long userId, Model model) {
        model.addAttribute("allUsers", userService.usergtList(userId));
        return "admin";
    }
}
