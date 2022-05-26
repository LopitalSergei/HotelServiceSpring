package com.laptev.controller;

import com.laptev.entity.*;
import com.laptev.service.OrderService;
import com.laptev.service.RequestService;
import com.laptev.service.RoomService;
import com.laptev.service.UserService;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Collections;

@Controller
@AllArgsConstructor
public class OrderController {
    private final OrderService orderService;

    private final UserService userService;

    private final RoomService roomService;

    private final RequestService requestService;

    @PostMapping("/creatingOrder")
    public String processingRoom(@RequestParam(required = true, defaultValue = "") Long roomNumber,
                                 @RequestParam(required = true, defaultValue = "") Long userId,
                                 @RequestParam(required = true, defaultValue = "") Long requestId,
                                 @RequestParam(required = true, defaultValue = "") Integer places,
                                 @RequestParam(required = true, defaultValue = "") Integer durationHours,
                                 Model model) {
        Order order = new Order();
        order.setUser(userService.findUserById(userId));
        order.setDurationHours(durationHours);
        order.setRooms(Collections.singleton(roomService.findById(roomNumber)));
        order.setPlaces(places);
        orderService.saveOrder(order);
        requestService.deleteRequest(requestId);
//        requestService.updateRequestStatus(requestService.findById(requestId), RequestStatus.COMPLETED);
        roomService.updateRoomStatus(roomService.findById(roomNumber), RoomStatus.BOOKED);

        return "redirect:/adminRequest";
    }
}
