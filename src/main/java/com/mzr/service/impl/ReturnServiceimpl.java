package com.mzr.service.impl;


import com.mzr.mapper.Book1Mapper;
import com.mzr.service.ReturnService;
import com.mzr.utils.MybatisUtil;
import org.apache.ibatis.session.SqlSession;

import java.util.List;

public class ReturnServiceimpl implements ReturnService {
    @Override
    public boolean returnData(List<String> list) {
        SqlSession sqlsession= MybatisUtil.getSession();
        Book1Mapper mapper=sqlsession.getMapper(Book1Mapper.class);
        for(String s:list){
            mapper.updataReturnData(Integer.parseInt(s));
            mapper.updatehave( mapper.selectBookIdById(Integer.parseInt(s)));
        }
        return true;
    }

    @Override
    public boolean borrowDate(List<String> list) {
        SqlSession sqlsession= MybatisUtil.getSession();
        Book1Mapper mapper=sqlsession.getMapper(Book1Mapper.class);
        for(String s:list){
            mapper.updataBorrowData(Integer.parseInt(s));
        }return true;
    }
}
