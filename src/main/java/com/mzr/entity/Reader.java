package com.mzr.entity;

import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class Reader {
int Id;
private String Name;
    private String Email;
    private String Password;
}
