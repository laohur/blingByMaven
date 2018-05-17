package com.tifup.bling.controller;
import com.tifup.bling.domain.Item;
import com.tifup.bling.service.ItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class ItemController {
//    @GetMapping(value="/item/{item_id}")
//    public Item get(@PathVariable("item_id") int item_id ){
//        return "redirect:"
//    }
//    @PostMapping(value="/item/{item_id}/add")
//    @PostMapping(value="/item/{item_id}/delete")
//    @PostMapping(value="/item/{item_id}/modify")
    @Autowired
    private  ItemService itemService;

//    @GetMapping(path="/item/{item_id}/json")
    @GetMapping("/item/json")
    @ResponseBody
//    public Item getItem(@PathVariable int item_id ){
//        return itemService.getItem(item_id);
//    }
    public Item getItem(){
        Item item=itemService.getItem();
        return item;
    }
}
