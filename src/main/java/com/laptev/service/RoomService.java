package com.laptev.service;

import com.laptev.entity.Room;
import com.laptev.entity.RoomStatus;
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

    public Room findById(Long id){
        if (roomRepository.findById(id).isPresent()) {
            return roomRepository.findById(id).get();
        } else return null;
    }

    public List<Room> allRooms(){
       return roomRepository.findAll();
    }

    public void updateRoomStatus(Room room, RoomStatus roomStatus){
        room.setStatus(roomStatus);
        roomRepository.save(room);
    }
}
