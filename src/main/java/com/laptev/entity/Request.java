package com.laptev.entity;

import lombok.*;

import javax.persistence.*;

@Entity(name = "requests")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Request {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private Integer places;

    private String roomClass;

    private Integer durationHours;

    @Builder.Default
    @Enumerated(EnumType.STRING)
    private RequestStatus requestStatus = RequestStatus.IN_PROGRESS;

    @ManyToOne(targetEntity = User.class, fetch = FetchType.EAGER)
    @JoinColumn(name = "user_id")
    private User user;
}
