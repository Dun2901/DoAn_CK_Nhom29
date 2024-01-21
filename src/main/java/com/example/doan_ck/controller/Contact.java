package com.example.doan_ck.controller;

import com.example.doan_ck.modal.Log;
import com.example.doan_ck.service.ContactService;
import com.example.doan_ck.service.LogService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "Contact", value = "/Contact")
public class Contact extends HttpServlet {
    String nameLog ="Contact";

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("contact.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getCharacterEncoding();
        String name = request.getParameter("full_name");
        String email = request.getParameter("email");
        String comment = request.getParameter("commnet");

        int id = LogService.getInstances().getNewID() + 1;
        int conid = ContactService.getIntances().getNewID() + 1;

    }
}