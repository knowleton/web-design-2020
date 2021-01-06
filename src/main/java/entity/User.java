package entity;
import entity.*;
import datafilter.*;
import filter.*;
import servelet.*;
import finder.*;
import java.sql.Timestamp;
import java.time.LocalDateTime;

public class User{
    public String name;
    public String passsword;
    public User(String name,String passsword)
    {
        this.name=name;
        this.passsword=passsword;

    }
}