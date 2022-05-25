package com.laptev.service;

import com.laptev.entity.Room;
import com.laptev.repository.RoomRepository;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@AllArgsConstructor
public class RoomService {

    private final RoomRepository roomRepository;

    public void saveRoom(Room room){
        roomRepository.save(room);
    }

    public List<Room> allRooms(){
       return roomRepository.findAll();
    }
}
