package com.tifup.bling.mapper;

import com.tifup.bling.domain.Item;
public interface ItemMapper{
    @Select("SELECT * FROM item")
    public Item getItem();
}
