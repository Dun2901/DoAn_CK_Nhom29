package com.example.doan_ck.controller;

import com.example.doan_ck.modal.Log;
import com.example.doan_ck.modal.User;
import com.example.doan_ck.service.ContactService;
import com.example.doan_ck.service.LogService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

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
        String full_name = request.getParameter("full_name");
        String email = request.getParameter("email");
        String comment = request.getParameter("comment");

        int logID = LogService.getInstances().getNewID() + 1;
        int id = ContactService.getIntances().getNewID() + 1;
        ContactService.getIntances().insertContact(id, full_name, email, comment);
        HttpSession session = request.getSession(true);
        User user = (User) session.getAttribute("auth");
        LogService.getInstances().addLog(logID, Log.INFO, (user == null ? 0 : user.getId()),
                nameLog, "id = " + id + " | full_name =" + full_name  + " | email = " + email + " | comment = " + comment);

        response.sendRedirect("home");
    }


    public int getid() {
        return 0;
    }
}