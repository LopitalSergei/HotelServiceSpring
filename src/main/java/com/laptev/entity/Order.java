package com.laptev.entity;

import lombok.*;

import javax.persistence.*;
import java.util.Set;

@Entity(name = "orders")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Order {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private Integer places;

    private Integer durationHours;

    @Builder.Default
    @Enumerated(EnumType.STRING)
    private OrderStatus orderStatus = OrderStatus.WAITING_FOR_CONFIRMATION;

    @ManyToOne
    @JoinColumn(name = "room_number")
    private Room room;

//    @ManyToMany(fetch = FetchType.EAGER)
//    private Set<Room> rooms;

    @ManyToOne
    @JoinColumn(name = "user_id")
    private User user;
}
