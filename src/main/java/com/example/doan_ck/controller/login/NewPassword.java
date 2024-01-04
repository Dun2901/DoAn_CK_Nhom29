package com.example.doan_ck.controller.login;

import com.example.doan_ck.service.UserService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet(name = "NewPassword", value = "/new-password")
public class NewPassword extends HttpServlet {
    String nameLog = "NewPassword";
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String newPassword = request.getParameter("newPass");
        String rePassword = request.getParameter("rePass");
        String email = (String) session.getAttribute("email");

        if (newPassword != null && rePassword != null && newPassword.equals(rePassword)) {
            newPassword = UserService.getInstances().hashPassword(newPassword);
            UserService.getInstances().updatePassword(email, newPassword);
            response.sendRedirect("log-in");
        } else {
            request.setAttribute("error", "Mật khẩu xác nhận không đúng!");
            request.getRequestDispatcher("new-password.jsp").forward(request,response);
        }
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}