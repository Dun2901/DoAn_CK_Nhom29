package com.example.doan_ck.service;


import com.example.doan_ck.db.JDBIConnector;
import com.example.doan_ck.modal.User;

import java.security.MessageDigest;
import java.util.Base64;
import java.util.List;
import java.util.stream.Collectors;

public class UserService {
    public static UserService getInstances() {
        return new UserService();
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
        if (!acc.getPassword().equals(password)
                || !acc.getUsername().equals(username)) return null;
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
            if (acc.getUsername().equals(username)) {
                return true;
            }
        }
        return false;
    }

    // Register a new account
    public void register(String username, String password) {
        JDBIConnector.get().withHandle(handle ->
                handle.createUpdate("INSERT INTO users (username, password) VALUES (?, ?)")
                        .bind(0, username)
                        .bind(1, password)
                        .execute()
        );
    }

    // Encrypt password
//    public String hashPassword(String password) {
//        String salt = "aspkmhtvtu#pgjliu7zlqfcy";
//        String result = null;
//        password += salt;
//
//        try {
//            byte[] dataBytes = password.getBytes("UTF-8");
//            MessageDigest sha256 = MessageDigest.getInstance("SHA-256");
//            result = Base64.getEncoder().encodeToString(sha256.digest(dataBytes));
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//        return result;
//    }
}
