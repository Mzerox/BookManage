package com.mzr.Servlet;

import com.mzr.entity.Borrow;
import com.mzr.entity.ShopingBorrow;
import com.mzr.mapper.Book1Mapper;
import com.mzr.utils.MybatisUtil;
import org.apache.ibatis.session.SqlSession;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "readerServlet", value = "/reader")
public class readerServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ShopingBorrow shopingBorrow=new ShopingBorrow();
        List<Borrow> borrowList=new ArrayList<>();
        SqlSession sqlsession= MybatisUtil.getSession();
        Book1Mapper mapper=sqlsession.getMapper(Book1Mapper.class);
        borrowList=mapper.selectBorrowList(1);//根据阅读者id查找借阅记录
        shopingBorrow.toBorrowinfo(borrowList);//借阅记录包装
        request.getSession().setAttribute("borrowDetai",shopingBorrow.getBorrowList());
        request.getRequestDispatcher("/reader.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
