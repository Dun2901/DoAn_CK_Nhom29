package com.example.doan_ck.control.login;

import com.example.doan_ck.service.MailService;
import com.example.doan_ck.service.UserService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.Random;

@WebServlet(name = "ForgotPassword", value = "/forgot-password")
public class ForgotPassword extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        int otpValue = 0;
        HttpSession session = request.getSession();
        String subject;
        String content;
        boolean emailExist = UserService.getInstances().checkEmailExist(email);

        if (!emailExist) {
            request.setAttribute("error", "Email không tồn tại! Vui lòng nhập lại email!");
            request.getRequestDispatcher("forgot-pass").forward(request, response);
        } else {
            Random rand = new Random();
            otpValue = rand.nextInt(999999);

            subject = "Password Recovery";
            content = "Hi, we provide for you an OTP code: " + otpValue + "\n"
                    + "Please enter OTP code to verify!";

            MailService.sendMail(email, subject, content);
            request.setAttribute("message", "Mã OTP đã được gửi đến email của bạn");
            session.setAttribute("otp", otpValue);
            session.setAttribute("email", email);
            request.getRequestDispatcher("enter-OTP").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}