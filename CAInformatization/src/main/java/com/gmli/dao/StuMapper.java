package com.gmli.dao;

import java.util.List;

import com.gmli.pojo.Stu;

public interface StuMapper {
    public void addStu(Stu stu);

    public void delStu(int stuId);

    public void updateStu(Stu stu);

    public Stu getStuById(int stuId);

    public List<Stu> getStuList();
}
