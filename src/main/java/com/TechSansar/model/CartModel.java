package com.TechSansar.model;

import java.sql.Timestamp;

public class CartModel {
    private int id;
    private int user_id;
    private String productName;
    private String imageUrl;
    private int price;
    private int quantity;
    private Timestamp addedDate;

    // Getters and Setters
    public int getId() { 
    	return id; 
    	}
    public void setId(int id) {
    	this.id = id; 
    	}

    public int getUserId() {
    	return user_id; 
    	}
    public void setUserId(int user_id) {
    	this.user_id = user_id; 
    	}

    public String getProductName() {
    	return productName; 
    	}
    public void setProductName(String productName) { 
    	this.productName = productName; 
    	}

    public String getImageUrl() { 
    	return imageUrl; 
    	}
    public void setImageUrl(String imageUrl) { 
    	this.imageUrl = imageUrl; 
    	}

    public int getPrice() { 
    	return price; 
    	}
    public void setPrice(int price) { 
    	this.price = price; 
    	}

    public int getQuantity() { 
    	return quantity; 
    	}
    public void setQuantity(int quantity) { 
    	this.quantity = quantity; 
    	}

    public Timestamp getAddedDate() { 
    	return addedDate; 
    	}
    public void setAddedDate(Timestamp addedDate) {
    	this.addedDate = addedDate; }
}
