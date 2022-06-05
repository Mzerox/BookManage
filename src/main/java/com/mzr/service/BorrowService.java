package com.mzr.service;



import com.alibaba.fastjson2.JSONArray;
import com.mzr.entity.ShopingBorrow;
import com.mzr.entity.Shopping;

public interface BorrowService{
        boolean insert(int readId, JSONArray bookId, ShopingBorrow borrow, Shopping booList);
}
