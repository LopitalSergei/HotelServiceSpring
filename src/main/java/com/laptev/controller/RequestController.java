package com.laptev.controller;

import com.laptev.entity.Request;
import com.laptev.entity.RequestStatus;
import com.laptev.entity.User;
import com.laptev.service.RequestService;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.validation.Valid;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Controller
@AllArgsConstructor
public class RequestController {

    private final RequestService requestService;

    // Обработать error-ы

    @GetMapping("/request")
    public String requestForm(Model model) {
        model.addAttribute("requestForm", new Request());

        return "request";
    }

    @PostMapping("/request")
    public String request(@ModelAttribute("requestForm") @Valid Request requestForm, BindingResult bindingResult, Model model) {
        if (bindingResult.hasErrors()) {
            return "request";
        }
        requestService.saveRequest(requestForm);

        return "redirect:/";
    }

    @PostMapping("/processingRequest")
    public String processing(@RequestParam(required = true, defaultValue = "") Long requestId,
                             @RequestParam(required = true, defaultValue = "") String action,
                             Model model) {

        if (action.equals("processing")) {
            model.addAttribute("request", requestService.findById(requestId));
        }
        return "processing";
    }

}
