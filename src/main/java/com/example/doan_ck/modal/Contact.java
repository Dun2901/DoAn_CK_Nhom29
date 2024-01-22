package com.example.doan_ck.modal;

import java.io.Serializable;

public class Contact implements Serializable {
    private int id;
    private String full_Name;
    private String email;
    private String comment;
    private String createDate;

    public Contact() {
    }

    public Contact(int id, String full_Name, String email, String comment, String createDate) {
        this.id = id;
        this.full_Name = full_Name;
        this.email = email;
        this.comment = comment;
        this.createDate = createDate;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFull_Name() {
        return full_Name;
    }

    public void setFull_Name(String full_Name) {
        this.full_Name = full_Name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public String getCreateDate() {
        return createDate;
    }

    public void setCreateDate(String createDate) {
        this.createDate = createDate;
    }

    @Override
    public String toString() {
        return "Contact{" +
                "id=" + id +
                ", full_Name='" + full_Name + '\'' +
                ", email='" + email + '\'' +
                ", comment='" + comment + '\'' +
                ", createDate='" + createDate + '\'' +
                '}';
    }
}
