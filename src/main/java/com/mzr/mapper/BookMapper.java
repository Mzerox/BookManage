package com.mzr.mapper;

import com.mzr.entity.Book;
import com.mzr.entity.Reader;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

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
@Select("select *from reader Where name=#{name} and Password=#{password}")
Reader selectUser(@Param("name") String name,  @Param("password") String password);
@Select("select * from book")
    List<Book> book();
@Select("select * from book where Id=#{id}")
    Book selectoneBookByid(String id);
@Update("update book set status='无货' where Id=#{id}")
    void selectnot(int id);
@Update("update book set status='有货' where Id=#{id}")
    void selecthave(int id);

}
