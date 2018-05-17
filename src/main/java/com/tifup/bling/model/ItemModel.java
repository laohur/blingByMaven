package com.tifup.bling.model;

import java.io.Serializable;
import java.util.Date;

public class ItemModel implements Serializable {
    private static final long serialVersionUID = 1L;
    //item_id,product_id,intime,ontime,size,color,length,width,height,heavy,price,inventory,status,scaling,x,y,name,title,image_id

    int item_id;
    int product_id;
    Date intime;
    Date ontime;
    int size;
    int color;
    int length;
    int width;
    int height;
    int heavy;
    int price;
    int inventory;
    int status;
    int scalling;
    int x;
    int y;
    String name;
    String title;
    int image_id;

    public int getItem_id() {
        return item_id;
    }

    public void setItem_id(int item_id) {
        this.item_id = item_id;
    }

    public int getProduct_id() {
        return product_id;
    }

    public void setProduct_id(int product_id) {
        this.product_id = product_id;
    }

    public Date getIntime() {
        return intime;
    }

    public void setIntime(Date intime) {
        this.intime = intime;
    }

    public Date getOntime() {
        return ontime;
    }

    public void setOntime(Date ontime) {
        this.ontime = ontime;
    }

    public int getSize() {
        return size;
    }

    public void setSize(int size) {
        this.size = size;
    }

    public int getColor() {
        return color;
    }

    public void setColor(int color) {
        this.color = color;
    }

    public int getLength() {
        return length;
    }

    public void setLength(int length) {
        this.length = length;
    }

    public int getWidth() {
        return width;
    }

    public void setWidth(int width) {
        this.width = width;
    }

    public int getHeight() {
        return height;
    }

    public void setHeight(int height) {
        this.height = height;
    }

    public int getHeavy() {
        return heavy;
    }

    public void setHeavy(int heavy) {
        this.heavy = heavy;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getInventory() {
        return inventory;
    }

    public void setInventory(int inventory) {
        this.inventory = inventory;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public int getScalling() {
        return scalling;
    }

    public void setScalling(int scalling) {
        this.scalling = scalling;
    }

    public int getX() {
        return x;
    }

    public void setX(int x) {
        this.x = x;
    }

    public int getY() {
        return y;
    }

    public void setY(int y) {
        this.y = y;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public int getImage_id() {
        return image_id;
    }

    public void setImage_id(int image_id) {
        this.image_id = image_id;
    }

    public ItemModel(int product_id, Date intime, Date ontime, int size, int color, int length, int width, int height, int heavy, int price, int inventory, int status, int scalling, int x, int y, String name, String title, int image_id) {
        this.product_id = product_id;
        this.intime = intime;
        this.ontime = ontime;
        this.size = size;
        this.color = color;
        this.length = length;
        this.width = width;
        this.height = height;
        this.heavy = heavy;
        this.price = price;
        this.inventory = inventory;
        this.status = status;
        this.scalling = scalling;
        this.x = x;
        this.y = y;
        this.name = name;
        this.title = title;
        this.image_id = image_id;
    }

    public ItemModel() {
        super();
    }
}
