package com.example.doan_ck.entity;

import java.io.Serializable;

public class User implements Serializable {
    private int id;
    private String user;
    private String pass;
    private int isSell;
    private int isAdmin;

    public User(int anInt, String string, String rsString, int rsInt, int i) {}

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public int getIsSell() {
        return isSell;
    }

    public void setIsSell(int isSell) {
        this.isSell = isSell;
    }

    public int getIsAdmin() {
        return isAdmin;
    }

    public void setIsAdmin(int isAdmin) {
        this.isAdmin = isAdmin;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", user='" + user + '\'' +
                ", pass='" + pass + '\'' +
                ", isSell=" + isSell +
                ", isAdmin=" + isAdmin +
                '}';
    }
}
