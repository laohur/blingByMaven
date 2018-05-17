package com.tifup.bling.domain;

import java.util.Date;

public class Order {
    int order_id;
    int client_id;
    Date create_time;
    Date update_time;
    String packages;
    int payment;
    int deliver;
    int status;
    int admount;
}
