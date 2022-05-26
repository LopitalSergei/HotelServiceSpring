package com.laptev.controller;

import com.laptev.entity.Room;
import com.laptev.entity.RoomClass;
import com.laptev.entity.RoomStatus;
import com.laptev.repository.RoomRepository;
import com.laptev.service.RequestService;
import com.laptev.service.RoomService;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
import java.util.List;

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

    @PostMapping("/roomSelect")
    public String roomSelect(@RequestParam(required = true, defaultValue = "") Long requestId,
                             @RequestParam(required = true, defaultValue = "") String action,
                             @RequestParam(required = true, defaultValue = "") Integer places,
                             @RequestParam(required = true, defaultValue = "") RoomClass roomClass,
                             Model model){
        if (action.equals("processing")) {
            List<Room> allRooms = roomService.allRooms();
            List<Room> suitableRooms = new ArrayList<>();
            for (Room room : allRooms) {
                if (room.getStatus().equals(RoomStatus.EMPTY) &&
                        room.getRoomClass().equals(roomClass) &&
                        room.getNumOfPlaces() >= places) {

                    suitableRooms.add(room);
                }
            }
            
            model.addAttribute("request", requestService.findById(requestId));
            model.addAttribute("suitableRooms", suitableRooms);
        }
        return "suitableRooms";
    }
}
