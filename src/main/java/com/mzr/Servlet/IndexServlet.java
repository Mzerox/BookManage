package com.mzr.Servlet;

import com.mysql.cj.Session;
import com.mzr.entity.Book;
import com.mzr.entity.Reader;
import com.mzr.entity.Shopping;
import com.mzr.mapper.BookMapper;
import com.mzr.util.MybatisUtils;
import org.apache.ibatis.session.SqlSession;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "IndexServlet", value = "/index")
public class IndexServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        SqlSession sqlSession = MybatisUtils.getSqlSession();
        BookMapper mapper = sqlSession.getMapper(BookMapper.class);
        ArrayList<Book> bookArrayList = (ArrayList<Book>) mapper.selectbook();
        List<Book> bookList=mapper.selectCatByid();
        HttpSession session = request.getSession();
        Object o = session.getAttribute("user");
        if(o!=null){
            request.setAttribute("login",true);
        }else {
            request.setAttribute("login",false);
        }
        request.getSession().setAttribute("bookArrayList",bookArrayList);
        request.getSession().setAttribute("bookList",bookList);
        request.getRequestDispatcher("/index.jsp").forward(request,response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
