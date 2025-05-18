package com.TechSansar.model;

public class ProductModel {
    private String product_name;
    private String imageUrl;
    private int product_price;
    private String product_description;// Added description field
    private int stock;

    // Constructor with description field
    public ProductModel(String product_name, String imageUrl, int product_price, String product_description, int stock) {
        this.product_name = product_name;
        this.imageUrl = imageUrl;
        this.product_price = product_price;
        this.product_description = product_description;  // Initialize the description
        this.stock = stock;
    }

    public ProductModel(int product_id, String product_name, int stock) {
        this.product_name = product_name;
        this.stock = stock;
    }
    
    public ProductModel() {
		super();
	}

	// Getters and Setters for all fields
    
	public String getName() {
        return product_name;
    }

    public void setName(String name) {
		this.product_name = name;
	}


	public String getImageUrl() {
        return imageUrl;
    }
	
	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}

	public int getPrice() {
        return product_price;
    }
	
	public void setPrice(int price) {
		this.product_price = price;
	}

    public String getDescription() {
        return product_description;  // Getter for description
    }

    public void setDescription(String description) {
        this.product_description = description;
    }
    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
    	  this.stock = stock;
    }
}