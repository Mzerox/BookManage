package com.mzr.Servlet;

import com.mzr.entity.Book;
import com.mzr.entity.Reader;
import com.mzr.mapper.BookMapper;
import com.mzr.util.MybatisUtils;
import org.apache.ibatis.session.SqlSession;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "LoginServlet", value = "/LoginServlet")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        SqlSession sqlSession = MybatisUtils.getSqlSession();
        BookMapper mapper = sqlSession.getMapper(BookMapper.class);
        String name = request.getParameter("username");
        String password = request.getParameter("password") ;
        Reader user =mapper.selectUser(name,password);
        if (user!=null){
            request.setAttribute("name",name);
            request.setAttribute("login",true);
            request.getSession().setAttribute("user",user);
            request.getRequestDispatcher("/index").forward(request,response);
        }
        else {
            request.setAttribute("login",false);
            //用户或密码错误
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
