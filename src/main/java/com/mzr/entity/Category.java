package com.mzr.entity;

import lombok.Data;
import lombok.ToString;
import org.apache.ibatis.annotations.Select;

@ToString
@Data
public class Category {
    private String Id;
    private String Code;
    private String Name;
    private String Description;
}
