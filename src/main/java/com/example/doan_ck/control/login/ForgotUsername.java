package com.example.doan_ck.control.login;

import com.example.doan_ck.service.MailService;
import com.example.doan_ck.service.UserService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "ForgotUsername", value = "/ForgotUsername")
public class ForgotUsername extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String subject;
        String content;
        String email = request.getParameter("email");
        String username = UserService.getInstances().getUsernameByEmail(email);


        if (username != null) {
            subject = "Username Recovery";
            content = "Hi, we provide for you your account information:" + "\n"
                    + "Username:" + " " + username;

            MailService.sendMail(email, subject, content);
            request.setAttribute("message", "Username đã được gửi đến địa chỉ email của bạn.");
            request.getRequestDispatcher("forgot-username").forward(request, response);
        } else {
            request.setAttribute("error", "Không tìm thấy thông tin cho địa chỉ email đã nhập.");
            request.getRequestDispatcher("forgot-username").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}