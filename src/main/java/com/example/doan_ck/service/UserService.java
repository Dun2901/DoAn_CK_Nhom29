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

    // Check email exist
    public boolean checkEmailExist(String email) {
        List<User> accounts = JDBIConnector.get().withHandle(h ->
                h.createQuery("SELECT email FROM users WHERE email = ?")
                        .bind(0, email)
                        .mapToBean(User.class)
                        .stream()
                        .collect(Collectors.toList())
        );
        for (int i = 0; i < accounts.size(); i++) {
            User acc = accounts.get(i);
            if (acc.getEmail().equals(email)) {
                return true;
            }
        }
        return false;
    }

    // get username by email
    public String getUsernameByEmail(String email) {
        List<String> usernames = JDBIConnector.get().withHandle(h ->
                h.createQuery("SELECT username FROM users WHERE email = ?")
                        .bind(0, email)
                        .mapTo(String.class)
                        .list()
        );

        return usernames.isEmpty() ? null : usernames.get(0);
    }


    // Register a new account
    public void register(String username, String password, String email) {
        JDBIConnector.get().withHandle(handle ->
                handle.createUpdate("INSERT INTO users (username, password, email) VALUES (?, ?, ?)")
                        .bind(0, username)
                        .bind(1, password)
                        .bind(2, email)
                        .execute()
        );
    }

    // Update a new password
    public void updatePassword(String email, String newPassword) {
        JDBIConnector.get().withHandle(handle ->
                handle.createUpdate("UPDATE users SET password = ? WHERE email = ?")
                        .bind(0, newPassword)
                        .bind(1, email)
                        .execute()
        );
    }

//     Encrypt password
    public String hashPassword(String password) {
        String salt = "aspkmhtvtu#pgjliu7zlqfcy";
        String result = null;
        password += salt;

        try {
            byte[] dataBytes = password.getBytes("UTF-8");
            MessageDigest sha256 = MessageDigest.getInstance("SHA-256");
            result = Base64.getEncoder().encodeToString(sha256.digest(dataBytes));
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }
}
