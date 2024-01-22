package com.example.doan_ck.controller;


import com.example.doan_ck.modal.Product;
import com.example.doan_ck.service.ProductService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "ListProduct", value = "/list-product")
public class ListProduct extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String idVendor = request.getParameter("idVendor");
        ProductService pro = new ProductService();
        List<Product> list;

        if (idVendor == null) {
            list = pro.getAllProducts();
        } else {

        }


        request.setAttribute("listP", list);
        request.getRequestDispatcher("list-product.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}