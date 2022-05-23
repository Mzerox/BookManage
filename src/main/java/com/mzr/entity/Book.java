package com.mzr.entity;

import lombok.Data;
import lombok.ToString;

@ToString
@Data
public class Book {
    private String Id;
    private String Code;
    private String Name;
    private String Authors;
    private String Press;
    private String Description;
    private String Price;
    private String Status;
}
