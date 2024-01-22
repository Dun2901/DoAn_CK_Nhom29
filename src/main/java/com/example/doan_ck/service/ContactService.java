package com.example.doan_ck.service;

import com.example.doan_ck.controller.Contact;
import com.example.doan_ck.db.JDBIConnector;

import java.util.List;
import java.util.stream.Collectors;

public class ContactService {
    public static ContactService getIntances(){
        return new ContactService();
    }

    // them contact
    public void insertContact(int id, String full_Name,  String email,  String comment) {
        JDBIConnector.get().withHandle(handle ->
                handle.createUpdate("INSERT INTO contacts values (?, ?, ?, ?, now())")
                        .bind(0, id)
                        .bind(1, full_Name)
                        .bind(2, email)
                        .bind(3, comment)
                        .execute()
        );

    }

    //tao id moi
    public int getNewID(){
        List<Contact> contacts = JDBIConnector.get().withHandle(handle ->
                handle.createQuery("SELECT * FROM contacts ORDER BY id DESC LIMIT 1")
                        .mapToBean(Contact.class)
                        .stream()
                        .collect(Collectors.toList())
        );
        for (int i = 0; i < contacts.size(); i++) {
            return contacts.get(i).getid();
        }

        return 0;

    }

    // Delete contact
    public void delete(String id) {
        JDBIConnector.get().withHandle(handle ->
                handle.createUpdate("DELETE FROM contacts WHERE contactID = ?")
                        .bind(0, id)
                        .execute()
        );
    }

    // Select all contact
    public List<Contact> selectAll() {
        List<Contact> contacts = JDBIConnector.get().withHandle(handle ->
                handle.createQuery("SELECT * FROM contacts")
                        .mapToBean(Contact.class)
                        .stream()
                        .collect(Collectors.toList())
        );
        return contacts;
    }
}
