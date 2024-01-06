package com.example.doan_ck.controller.login;

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


@WebServlet(name = "UpdatePassword", value = "/update-password")
public class UpdatePassword extends HttpServlet {
    String nameLog = "UpdatePassword";
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String password = request.getParameter("currentPassword");
        password = UserService.getInstances().hashPassword(password);
        String newPass = request.getParameter("newPassword");
        String rePass = request.getParameter("confirmPassword");
        HttpSession session = request.getSession();
        User auth = (User) session.getAttribute("auth");

        if (password.equals(auth.getPassword()) && newPass.equals(rePass)) {
            newPass = UserService.getInstances().hashPassword(newPass);
            UserService.getInstances().updatePassword(auth.getEmail(), newPass);

            int log_id = LogService.getInstances().getNewID() + 1;
            LogService.getInstances().addLog(log_id, Log.ALERT, (auth ==null?0: auth.getId()),nameLog,"User ID " + auth.getId()+"Update Password");
            session.removeAttribute("auth");
            response.sendRedirect("log-in");
        } else {
            request.setAttribute("error", "Mật khẩu không đúng!");
            request.getRequestDispatcher("change-password").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}