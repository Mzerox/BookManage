package com.mzr.Servlet;

import com.mzr.entity.Book;
import com.mzr.mapper.BookMapper;
import com.mzr.util.MybatisUtils;
import org.apache.ibatis.session.SqlSession;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "SearchServlet", value = "/SearchServlet")
public class SearchServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        SqlSession sqlSession = MybatisUtils.getSqlSession();
        BookMapper mapper = sqlSession.getMapper(BookMapper.class);
        String search = request.getParameter("q");
        List<Book> bookArrayList = mapper.selectCatBySearch(search);
        request.getSession().setAttribute("bookArrayList",bookArrayList);
        request.getRequestDispatcher("/index.jsp").forward(request,response);


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
