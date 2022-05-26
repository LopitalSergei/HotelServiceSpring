package com.laptev.entity;

import lombok.*;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.Id;

@Entity(name = "rooms")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Room {
    @Id
    private Long roomNumber;

    private Integer places;

    @Enumerated(EnumType.STRING)
    private RoomClass roomClass;

    @Builder.Default
    @Enumerated(EnumType.STRING)
    private RoomStatus status = RoomStatus.EMPTY;
}
