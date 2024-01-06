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
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Kiểm tra người dùng đã đăng nhập hay chưa
        HttpSession session = request.getSession();
        User authenticatedUser = (User) session.getAttribute("auth");

        if (authenticatedUser == null) {
            // Người dùng chưa đăng nhập, chuyển hướng đến trang đăng nhập
            response.sendRedirect("login"); // Thay đổi URL đến trang đăng nhập của bạn
            return;
        }

        // Lấy thông tin từ form
        String fullName = request.getParameter("fullName");

        // Kiểm tra xem fullName có giá trị hợp lệ hay không
        if (fullName == null || fullName.trim().isEmpty()) {
            // Xử lý lỗi, chuyển hướng đến trang cập nhật với thông báo lỗi
            response.sendRedirect("update-profile?error=invalidName");
            return;
        }

        // Cập nhật thông tin vào CSDL
        UserService userService = UserService.getInstances();
        userService.updateUserInfo(authenticatedUser.getEmail(), fullName);

        // Cập nhật giá trị trong session
        session.setAttribute("fullName", fullName);

        // Chuyển hướng sau khi cập nhật thành công
        response.sendRedirect("my-profile");
    }

}
