package com.example.doan_ck.controller;

import com.example.doan_ck.modal.Log;
import com.example.doan_ck.modal.User;
import com.example.doan_ck.service.LogService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet(name = "Logout", value = "/logout")
public class Logout extends HttpServlet {
    String name= "logout";
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(true);
        User user = (User) session.getAttribute("auth");
        int log_id = LogService.getInstances().getNewID() + 1;
        LogService.getInstances().addLog(log_id, Log.INFO, user.getId(),name,user.getUsername()+" Log Out");

        session.removeAttribute("auth");

        response.sendRedirect("home");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            doGet(request, response);
    }
}