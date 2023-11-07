package com.example.session06_bt;

import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "discount_servlet", value = "/discount_servlet")
public class DiscountServlet extends HttpServlet {
    @Override
    public void init() {

    }

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
          request.getRequestDispatcher("index.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String description = req.getParameter("description");
        double  listPrice = Double.parseDouble(req.getParameter("listPrice"));
        double  discountPercent = Double.parseDouble(req.getParameter("discountPercent"));

        double discountAmount = listPrice * discountPercent * 0.01;
        double discountPrice = listPrice - discountAmount;
        req.setCharacterEncoding("UTF-8");

        req.setAttribute("discountAmount",discountAmount);
        req.setAttribute("discountPrice",discountPrice);
           req.getRequestDispatcher("displayDiscount.jsp").forward(req,resp);
    }

}