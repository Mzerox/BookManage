package com.mzr.Servlet;


import com.alibaba.fastjson2.JSON;
import com.alibaba.fastjson2.JSONArray;
import com.mzr.entity.ShopingBorrow;
import com.mzr.entity.Shopping;
import com.mzr.service.impl.BorrowServiceimpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ShopingServlet1", value = "/shopreal")
public class BorrowServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        String id=request.getParameter("id");
        System.out.println(id);

        JSONArray jsonArray= JSON.parseArray(id);

        jsonArray.forEach(System.out::println);
        Shopping booList= (Shopping) request.getSession().getAttribute("shop");

//jsonArray.forEach(System.out::println);
        ShopingBorrow borrowList;
        if(request.getSession().getAttribute("borrow")==null){
            borrowList=new ShopingBorrow();

        }else {
            borrowList= (ShopingBorrow) request.getSession().getAttribute("borrow");
        }
        BorrowServiceimpl service=new BorrowServiceimpl();
        service.insert(1,jsonArray,borrowList,booList);
        request.getSession().setAttribute("borrow",borrowList);
        response.getWriter().print(JSON.toJSON(borrowList));
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

}
}