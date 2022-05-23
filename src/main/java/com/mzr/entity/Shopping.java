package com.mzr.entity;

import com.mzr.mapper.BookMapper;
import com.mzr.util.MybatisUtils;
import org.apache.ibatis.session.SqlSession;

import java.util.ArrayList;
import java.util.List;

public class Shopping {
    public List<Book> bookList;

    public List<Book> getBookList() {
        return this.bookList;
    }

    public void setBookList(List<Book> bookList) {
        this.bookList = bookList;
    }

    public Shopping(){
        this.bookList=new ArrayList<>();
    }

    public void add(String id){
        SqlSession sqlSession= MybatisUtils.getSqlSession();
        BookMapper mapper=sqlSession.getMapper(BookMapper.class);
        boolean found=false;
        for(Book book1:this.bookList){
            if(book1.getId().equals(id)){
                found=true;
                break;
            }
        }
        if (found==false){

            this.bookList.add(mapper.selectoneBookByid(id));
        }
    }
    public  void remover(String id){

        SqlSession sqlSession= MybatisUtils.getSqlSession();
        BookMapper mapper=sqlSession.getMapper(BookMapper.class);
        for(Book book:this.bookList){
            if(book.getId().equals(id)){
                mapper.selecthave(Integer.parseInt(id));
                this.bookList.remove(book);
                break;
            }
        }
    }

}