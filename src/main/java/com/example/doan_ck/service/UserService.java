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

    // get fullName by email
    public String getFullNameByEmail(String email) {
        List<String> fullNames = JDBIConnector.get().withHandle(h ->
                h.createQuery("SELECT full_name FROM users WHERE email = ?")
                        .bind(0, email)
                        .mapTo(String.class)
                        .list()
        );

        return fullNames.isEmpty() ? null : fullNames.get(0);
    }



    // Register a new account
    public void register(String id, String fullName, String username, String password, String email) {
        JDBIConnector.get().withHandle(handle ->
                handle.createUpdate("INSERT INTO users (id, full_name, username, password, email) VALUES (?, ?, ?, ?, ?)")
                        .bind(0, id)
                        .bind(1, fullName)
                        .bind(2, username)
                        .bind(3, password)
                        .bind(4, email)
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

    // Update user information
    public void updateUserInfo(String email, String fullName ) {
        JDBIConnector.get().withHandle(handle ->
                handle.createUpdate("UPDATE users SET full_name = ? WHERE email = ?")
                        .bind(0, fullName)
                        .bind(1, email)
                        .execute()
        );
    }

    // Get new id
    public int getNewID() {
        List<User> users = JDBIConnector.get().withHandle(handle ->
                handle.createQuery("SELECT * FROM users order by id DESC Limit 1")
                        .mapToBean(User.class)
                        .stream()
                        .collect(Collectors.toList())
        );
        for (int i = 0; i < users.size(); i++) {
            return users.get(i).getId();
        }
        return 0;
    }

    // Get all user
    public  List<User> listALlUser(){
        List<User> lu = JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("SELECT * FROM users")
                    .mapToBean(User.class)
                    .stream().collect(Collectors.toList());
        });
        return lu;
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
