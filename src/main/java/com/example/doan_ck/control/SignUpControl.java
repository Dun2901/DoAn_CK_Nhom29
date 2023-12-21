//package com.example.doan_ck.control;
//
//import com.example.doan_ck.dao.DAO;
//import com.example.doan_ck.entity.User;
//import jakarta.servlet.ServletException;
//import jakarta.servlet.annotation.WebServlet;
//import jakarta.servlet.http.HttpServlet;
//import jakarta.servlet.http.HttpServletRequest;
//import jakarta.servlet.http.HttpServletResponse;
//
//import java.io.IOException;
//
//@WebServlet(name = "SignUpControl", value = "/SignUpControl")
//public class SignUpControl extends HttpServlet {
//    @Override
//    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        String user = request.getParameter("user");
//        String pass = request.getParameter("pass");
//        String re_pass = request.getParameter("repass");
//
//        if (!pass.equals(re_pass)) {
//            response.sendRedirect("login.jsp");
//        } else {
//            DAO dao = new DAO();
//            User a = dao.checkAccountExist(user);
//            if (a == null) {
//                // dc signup
//            } else {
//                // về trang login.jsp
//                response.sendRedirect("login.jsp");
//            }
//        }
//
//    }
//
//    @Override
//    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        doGet(request, response);
//    }
//}