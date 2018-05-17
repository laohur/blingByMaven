package com.tifup.bling.service;

import com.tifup.bling.mapper.ItemMapper;
import com.tifup.bling.domain.Item;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ItemService {
    @Autowired
    private ItemMapper itemMapper;
    public Item getItem(){
        Item item=itemMapper.getItem();
        return item;
    }
//    get(){}
//    add(){}
//    modify(){}
//    delete(){}
//    order(){}
//    search(){}


}
