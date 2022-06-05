package com.mzr.service.impl;


import com.mzr.mapper.Book1Mapper;
import com.mzr.service.DeleteService;
import com.mzr.utils.MybatisUtil;
import org.apache.ibatis.session.SqlSession;

public class DeleteServiceimpl implements DeleteService {

    @Override
    public void deleteborrow(int id) {
        SqlSession sqlsession= MybatisUtil.getSession();
        Book1Mapper mapper=sqlsession.getMapper(Book1Mapper.class);
        mapper.deleteborrow(id);
    }
}
