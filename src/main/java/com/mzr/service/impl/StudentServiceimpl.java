package com.mzr.service.impl;


import com.mzr.service.StudentService;
import com.mzr.utils.MybatisUtil;
import org.apache.ibatis.session.SqlSession;

import javax.servlet.http.HttpSession;

public class StudentServiceimpl implements StudentService {
    @Override
    public boolean pangduan(String username, String password, HttpSession session) {
//        SqlSession sqlsession= MybatisUtil.getSession();
//        StudentMapper mapper=sqlsession.getMapper(StudentMapper.class);
//        Student student=mapper.getstudent(username,password);
//        if(student==null)
//           return false;
//        session.setAttribute("student",student);

        return true;
    }
}
