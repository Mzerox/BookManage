package com.mzr.service;

import javax.servlet.http.HttpSession;

public interface StudentService {
    boolean pangduan(String username, String password, HttpSession session);

}
