package com.mzr.service.impl;


import com.alibaba.fastjson2.JSONArray;
import com.mzr.entity.ShopingBorrow;
import com.mzr.entity.Shopping;
import com.mzr.mapper.Book1Mapper;
import com.mzr.service.BorrowService;
import com.mzr.utils.MybatisUtil;
import org.apache.ibatis.session.SqlSession;

public class BorrowServiceimpl implements BorrowService {
    @Override
    public boolean insert(int readId, JSONArray bookId, ShopingBorrow borrow, Shopping booList) {

        SqlSession sqlsession= MybatisUtil.getSession();
        Book1Mapper mapper=sqlsession.getMapper(Book1Mapper.class);
        for (int i = 0; i < bookId.size(); i++) {
            mapper.insertBorrow(readId,  bookId.getInteger(i));//根据bookId插入borrow表图书数据
            mapper.selectnot( bookId.getInteger(i));//把图书状态变更
//            borrow.tran(Integer.parseInt(bookId.get(i)));
            booList.remover(bookId.getString(i));//删除书架以借阅的书籍
        }return true;
    }
}
