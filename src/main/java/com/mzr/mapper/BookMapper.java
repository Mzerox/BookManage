package com.mzr.mapper;

import com.mzr.entity.Book;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface BookMapper {
@Select("select * from book ")
    List<Book> selectbook();
@Select("select * from book where CategoryId=#{id}")
    List<Book> selectBookByid(String id);
@Select("select * from category ")
    List<Book> selectCatByid();
@Select("select * from book where Name like '%${name}%' ")
    List<Book> selectCatBySearch(String name);
}
