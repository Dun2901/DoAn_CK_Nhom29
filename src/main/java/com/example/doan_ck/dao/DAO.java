package com.example.doan_ck.dao;

import com.example.doan_ck.db.JDBIConnector;
import com.example.doan_ck.entity.User;

import java.util.List;
import java.util.stream.Collectors;


public class DAO {


    public static DAO getInstances() {
        return new DAO();
    }


    // Check login is right
    public User checkLogin(String username, String password) {
        List<User> accounts = JDBIConnector.get().withHandle(h ->
                h.createQuery("SELECT * FROM users WHERE username = ?")
                        .bind(0, username)
                        .mapToBean(User.class)
                        .stream()
                        .collect(Collectors.toList())
        );
        if (accounts.size() != 1) return null;
        User acc = accounts.get(0);
        if (!acc.getPass().equals(password)
                || !acc.getUser().equals(username)) return null;
        return acc;
    }

    // Check account exist
    public boolean checkAccountExist(String username) {
        List<User> user = JDBIConnector.get().withHandle(h ->
                h.createQuery("SELECT * FROM users WHERE username = ?")
                        .bind(0, username)
                        .mapToBean(User.class)
                        .stream()
                        .collect(Collectors.toList())
        );
        for (int i = 0; i < user.size(); i++) {
            User acc = user.get(i);
            if (acc.getUser().equals(username)) {
                return true;
            }
        }
        return false;
    }

    // Register a new account
    public void register(String id, String username, String password) {
        JDBIConnector.get().withHandle(handle ->
                handle.createUpdate("INSERT INTO users (id, username, password) VALUES (?, ?, ?)")
                        .bind(0, id)
                        .bind(1, username)
                        .bind(2, password)
                        .execute()
        );
    }

}
