package entity;
import entity.*;
import datafilter.*;
import filter.*;
import servelet.*;
import finder.*;

import java.util.Date;

public class News {
    public int id;
    public String title;
    public String content;
    public Date updatetime;
    public String photo;

    public News(){}

    public News(int id,String title,String content,Date updatetime)
    {
        this.id=id;
        this.content=content;
        this.updatetime=updatetime;
        this.title=title;
    }
    public int getId(){
        return id;
    }
    public String getTitle(){
        return title;
    }
    public String getContent(){
        return content;
    }
    public Date getUpdatetime(){
        return updatetime;
    }
    public String getPhoto(){return photo;}


}
