package com.example.doan_ck.modal;

import java.io.Serializable;

public class Contact implements Serializable {
    private int id;
    private int logID;
    private String full_Name;
    private String email;
    private String comment;

    public Contact(int id, int logID, String full_name, String email, String comment){
        this.logID = logID;
        this.id =id;
        this.full_Name = full_name;
        this.email = email;
        this.comment = comment;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getLogID() {
        return logID;
    }

    public void setLogID(int logID) {
        this.logID = logID;
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

    @Override
    public String toString() {
        return "Contact{" +
                "id=" + id +
                ", logID=" + logID +
                ", full_Name='" + full_Name + '\'' +
                ", email='" + email + '\'' +
                ", comment='" + comment + '\'' +
                '}';
    }

    public Contact() {
    }
}
