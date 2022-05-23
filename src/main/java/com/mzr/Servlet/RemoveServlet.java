package com.mzr.Servlet;

import com.mzr.entity.Shopping;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "RemoveServlet", value = "/remover")
public class RemoveServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id=request.getParameter("id");
        if(request.getSession().getAttribute("shop")==null){
request.getRequestDispatcher("/bookcase.jsp").forward(request,response);
        }else{

                Shopping bookList= (Shopping) request.getSession().getAttribute("shop");
            bookList.remover(id);
                request.getSession().setAttribute("shop",bookList);
                request.getRequestDispatcher("/bookcase.jsp").forward(request,response);
        }

}

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
