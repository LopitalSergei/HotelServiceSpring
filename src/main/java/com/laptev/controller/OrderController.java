package com.laptev.controller;

import com.laptev.entity.*;
import com.laptev.service.OrderService;
import com.laptev.service.RequestService;
import com.laptev.service.RoomService;
import com.laptev.service.UserService;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Collections;
import java.util.Optional;

@Controller
@AllArgsConstructor
public class OrderController {
    private final OrderService orderService;

    private final UserService userService;

    private final RoomService roomService;

    private final RequestService requestService;

    @GetMapping("/allOrders")
    public String allOrders(Model model) {
        model.addAttribute("allOrders", orderService.allOrders());
        return "orders";
    }

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
        order.setRoom(roomService.findById(roomNumber));
        order.setPlaces(places);
        orderService.saveOrder(order);
        requestService.updateRequestStatus(requestService.findById(requestId), RequestStatus.COMPLETED);
        roomService.updateRoomStatus(roomService.findById(roomNumber), RoomStatus.BOOKED);
        orderService.sendMail(userService.findUserById(userId).getEmail(), requestService.findById(requestId), order);
//        requestService.deleteRequest(requestId);
        return "redirect:/adminRequest";
    }

    @GetMapping("/confirmRoom")
    String confirmRoom(@RequestParam("confirm") String confirm,
                       @RequestParam("orderId") Long orderId,
                       @RequestParam("requestId") Long requestId) {

        if (confirm.equals("yes")) {
            orderService.updateOrderStatus(orderService.findById(orderId), OrderStatus.CONFIRM);
            requestService.deleteRequest(requestId);

        } else if (confirm.equals("no")) {
            requestService.updateRequestStatus(requestService.findById(requestId), RequestStatus.IN_PROGRESS);
            roomService.updateRoomStatus(roomService.findById(orderService.findById(orderId).getRoom().getRoomNumber()), RoomStatus.EMPTY);
            orderService.deleteOrderById(orderId);
        }
        return "redirect:/";
    }
}
// посмотреть как я сделал так, чтобы BOOKED комнаты не показывались в списке подходящих