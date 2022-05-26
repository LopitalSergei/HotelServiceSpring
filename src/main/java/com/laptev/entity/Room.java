package com.laptev.entity;

import lombok.*;

import javax.persistence.*;
import java.util.Set;

@Entity(name = "rooms")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Room {
    @Id
    private Long roomNumber;

    private Integer numOfPlaces;

    @Enumerated(EnumType.STRING)
    private RoomClass roomClass;

    @Builder.Default
    @Enumerated(EnumType.STRING)
    private RoomStatus status = RoomStatus.EMPTY;

    @OneToMany(mappedBy = "room", cascade = CascadeType.ALL, orphanRemoval = true)
    private Set<Order> orders;

//    @Transient
//    @ManyToMany(mappedBy = "roles")
//    private Set<User> users;
}
