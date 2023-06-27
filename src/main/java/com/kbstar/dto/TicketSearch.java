package com.kbstar.dto;

import lombok.*;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
@ToString
public class TicketSearch {
    private String ticketName;
    private int ticketNo;


}
