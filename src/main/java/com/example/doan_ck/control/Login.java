package com.example.doan_ck.control;

import com.example.doan_ck.modal.Log;
import com.example.doan_ck.modal.User;
import com.example.doan_ck.service.LogService;
import com.example.doan_ck.service.UserService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet(name = "Login", urlPatterns = "/login")
public class Login extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        password = UserService.getInstances().hashPassword(password);
        User user = UserService.getInstances().checkLogin(username, password);
        int log_id = LogService.getInstances().getNewID() + 1;

        HttpSession session = request.getSession();
        Integer loginAttempts = (Integer) session.getAttribute("loginAttempts");

        if (user == null) {
            if (loginAttempts == null) {
                session.setAttribute("loginAttempts", 0);
            } else if (loginAttempts >= 3) {
                LogService.getInstances().addLog(log_id, Log.DANGER, 0, "account blocked", "Username= " + username);
                request.setAttribute("error", "Tài khoản tạm thời bị khóa. Vui lòng đăng nhập lại sau!");
                request.getRequestDispatcher("log-in").forward(request, response);
            } else {
                session.setAttribute("loginAttempts", loginAttempts + 1);
            }
            LogService.getInstances().addLog(log_id, Log.WARNING, 0, "login false", "Username= " + username);
            request.setAttribute("error", "Tên đăng nhập hoặc mật khẩu không đúng!");
            request.getRequestDispatcher("log-in").forward(request, response);
//            request.setAttribute("error", "Tên đăng nhập hoặc mật khẩu không đúng!");
//            request.getRequestDispatcher("log-in").forward(request, response);
        } else {
            session.setAttribute("auth", user);
            LogService.getInstances().addLog(log_id, Log.INFO, user.getId(), "login success", "Username= " + username);
            if (user.checkRole(3)) {
                response.sendRedirect("admin/statistic");
            } else {
                response.sendRedirect("home.jsp");
            }
            session.setAttribute("loginAttempts", 0);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}