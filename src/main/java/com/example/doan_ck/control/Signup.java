package com.example.doan_ck.control;

import com.example.doan_ck.service.UserService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "signup", value = "/signup")
public class Signup extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String rePass = request.getParameter("repass");


        if (!password.equals(rePass)) {
            request.setAttribute("error", "Mật khẩu xác nhận không đúng!");
            request.getRequestDispatcher("sign-up").forward(request, response);
        }else {
            boolean accountExist = UserService.getInstances().checkAccountExist(username);
            boolean emailExist = UserService.getInstances().checkEmailExist(email);
            if (!accountExist && !emailExist) {
                password = UserService.getInstances().hashPassword(password);
                UserService.getInstances().register(username, password, email);
                request.getRequestDispatcher("log-in").forward(request, response);
            }else {
                request.setAttribute("error", "Tài khoản đã tồn tại!");
                request.getRequestDispatcher("sign-up").forward(request, response);
            }
        }
//        protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {}
    }


}