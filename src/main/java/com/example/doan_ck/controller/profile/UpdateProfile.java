package com.example.doan_ck.controller.profile;

import com.example.doan_ck.modal.User;
import com.example.doan_ck.service.UserService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet(name = "UpdateProfile", value = "/update-profile")
public class UpdateProfile extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String fullName = request.getParameter("fullName");
        HttpSession session = request.getSession(true);
        User email = (User) session.getAttribute("auth");

        // Remove leading and trailing whitespaces
        fullName = fullName.trim();

        // You need to set the attribute in the request
        request.setAttribute("fullName", fullName);


        UserService.getInstances().updateUserInfo(email.getEmail(), fullName);
        request.getRequestDispatcher("my-profile").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}