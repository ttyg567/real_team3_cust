package com.kbstar.dto;

import lombok.*;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
@ToString
public class Ticket {
    private int ticketNo;
    private int gymNo;
    private String ticketName;
    private char gymMasterCk;
    private String ticketType;
    private int ticketMonth;
    private int ticketNumber;
    private char ticketJoin;
    private int ticketTotal;
    private int ticketSales;
    private int ticketCost;
    private double ticketDiscount;
    private int ticketPrice;
    private String ticketImgname;
    private String sportsType;
    private String sportsClasstype;

   private String ticketValue;

}
