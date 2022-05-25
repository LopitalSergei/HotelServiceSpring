package com.laptev.controller;

import com.laptev.service.RequestService;
import com.laptev.service.RoomService;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@AllArgsConstructor
public class RoomController {

    private final RoomService roomService;

    private final RequestService requestService;

    @GetMapping("/allRooms")
    public String allRooms(Model model){
        model.addAttribute("allRooms", roomService.allRooms());
        return "rooms";
    }

    // Сделать обработку подходящих комнат, достать из БД нужные комнаты и передать в suitableRooms


    @PostMapping("/roomSelect")
    public String roomSelect(@RequestParam(required = true, defaultValue = "") Long requestId,
                             @RequestParam(required = true, defaultValue = "") String action,
                             @RequestParam(required = true, defaultValue = "") Integer places,
                             @RequestParam(required = true, defaultValue = "") String roomClass,
                             Model model){
        if (action.equals("processing")) {
            model.addAttribute("request", requestService.findById(requestId));
            model.addAttribute("suitableRooms", roomService.allRooms());
        }
        return "suitableRooms";
    }
}
