package com.tifup.bling.domain;

import java.util.Date;

public class Client extends User{
    int client_id;
    String username;
    String password;
    String emaill;
    String mobile;
    String question;
    String answer;
    Date create_time;
    Date update_time;
    Date verified_time;
    String dreser;
    String cart;


    boolean isMatch(){
        return false;
    }

}
