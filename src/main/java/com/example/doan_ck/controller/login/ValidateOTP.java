package com.example.doan_ck.controller.login;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet(name = "ValidateOTP", value = "/validateOTP")
public class ValidateOTP extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String otpString = request.getParameter("otp").trim();

        if (otpString.contains(" ")) {
            // Người dùng nhập mã OTP có khoảng trắng
            request.setAttribute("message", "Mã OTP không được chứa khoảng trắng!");
            request.getRequestDispatcher("enter-OTP").forward(request, response);
        } else {
            try {
                int value = Integer.parseInt(otpString);
                HttpSession session = request.getSession();
                int otp = (int) session.getAttribute("otp");

                if (value == otp) {
                    request.setAttribute("email", request.getParameter("email"));
                    response.sendRedirect("new-pass");
                } else {
                    request.setAttribute("message", "Mã OTP không đúng!");
                    request.getRequestDispatcher("enter-OTP").forward(request, response);
                }
            } catch (NumberFormatException e) {
                // Handle the case where the user entered a non-integer value for OTP
                request.setAttribute("message", "Vui lòng nhập mã OTP là một số nguyên!");
                request.getRequestDispatcher("enter-OTP").forward(request, response);
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}