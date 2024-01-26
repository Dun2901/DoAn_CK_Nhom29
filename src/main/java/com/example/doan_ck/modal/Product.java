package com.example.doan_ck.modal;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

public class Product implements Serializable {
    private static final long serialVersionUID = 1L;
    private String productID;
    private String cat_id;
    private String name;
    private int out_price;
    private int quantity;
    private String imageUrl;
    private String description;
    private String vendor;
    private int status;
    private Date deleteAt;
    private String vendor_id;

    public Product() {
    }

    public String getVendor_id() {
        return vendor_id;
    }

    public void setVendor_id(String vendor_id) {
        this.vendor_id = vendor_id;
    }

    public Product(String productID, String cat_id, String name, int out_price, int quantity, String imageUrl, String description, String vendor, int status, Date deleteAt) {
        this.productID = productID;
        this.cat_id = cat_id;
        this.name = name;
        this.out_price = out_price;
        this.quantity = quantity;
        this.imageUrl = imageUrl;
        this.description = description;
        this.vendor = vendor;
        this.status = status;
        this.deleteAt = deleteAt;
    }

    public String getImageUrl() {
        return imageUrl;
    }

    public void setImageUrl(String imageUrl) {
        this.imageUrl = imageUrl;
    }

    public String getProductID() {
        return productID;
    }

    public void setProductID(String productID) {
        this.productID = productID;
    }

    public String getCat_id() {
        return cat_id;
    }

    public void setCat_id(String cat_id) {
        this.cat_id = cat_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getOut_price() {
        return out_price;
    }

    public void setOut_price(int out_price) {
        this.out_price = out_price;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getVendor() {
        return vendor;
    }

    public void setVendor(String vendor) {
        this.vendor = vendor;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public Date getDeleteAt() {
        return deleteAt;
    }

    public void setDeleteAt(Date deleteAt) {
        this.deleteAt = deleteAt;
    }

    @Override
    public String toString() {
        return "Product{" +
                "productID='" + productID + '\'' +
                ", cat_id='" + cat_id + '\'' +
                ", name='" + name + '\'' +
                ", out_price=" + out_price +
                ", quantity=" + quantity +
                ", imageUrl='" + imageUrl + '\'' +
                ", description='" + description + '\'' +
                ", vendor='" + vendor + '\'' +
                ", status=" + status +
                ", deleteAt=" + deleteAt +
                '}';
    }
}

