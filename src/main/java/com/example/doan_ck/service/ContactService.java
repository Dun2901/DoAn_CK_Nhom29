package com.example.doan_ck.service;

import com.example.doan_ck.controller.Contact;
import com.example.doan_ck.db.JDBIConnector;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;
import java.util.stream.Collectors;


@WebServlet(name = "ContactService", value = "/ContactService")
public class ContactService extends HttpServlet {

    public static ContactService getIntances(){
        return new ContactService();
    }

    // them contact
    public void insertContact(int id, String full_name, String email, String comment) {
        JDBIConnector.get().withHandle(handle ->
                handle.createUpdate("INSERT INTO contacts values (?, ?, ?, ?, now())")
                        .bind(0, id)
                        .bind(1, full_name)
                        .bind(2, email)
                        .bind(3, comment)
                        .execute()
        );

    }

    //tao id moi
    public int  getNewID(){
        List<Contact> contacts = (List<Contact>) JDBIConnector.get().withHandle(handle ->
                handle.createQuery("SELECT * FROM contacts ORDER BY ID DESC LIMIT 1")
                        .mapToBean(Contact.class)
                        .stream()
                        .collect(Collectors.toList())
                );
        if()

    }



    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}