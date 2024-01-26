package com.example.doan_ck.controller.admin;

import com.example.doan_ck.modal.Product;
import com.example.doan_ck.service.ProductService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "AdProduct", value = "/admin/product-list")
public class AdProduct extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, IOException {
//        HttpSession session = request.getSession();
//        User auth = (User) session.getAttribute("auth");
//
//        if (auth == null || !auth.checkRole(1)) {
//            response.sendRedirect("not-found");
//        } else {
//            List<Product> proList = ProductService.getInstance().getAllProducts();
//            request.setAttribute("proList", proList);
//            request.getRequestDispatcher("admin/product.jsp").forward(request, response);
//        }

        List<Product> proList = ProductService.getInstance().getAllProducts();
        request.setAttribute("proList", proList);
        request.getRequestDispatcher("product.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}