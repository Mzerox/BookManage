package com.mzr.Servlet;

import com.mzr.entity.Shopping;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "BookcaseAddServlet", value = "/add")
public class BookcaseAddServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id=request.getParameter("id");
        System.out.println(id);
        Shopping bookList;
        if(request.getSession().getAttribute("shop")==null){
            bookList=new Shopping();

        }else {
            bookList= (Shopping) request.getSession().getAttribute("shop");
        }
        bookList.add(id);
        request.getSession().setAttribute("shop",bookList);
        request.getRequestDispatcher("/bookcase.jsp").forward(request,response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
