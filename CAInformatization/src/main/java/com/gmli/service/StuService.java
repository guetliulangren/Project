package com.gmli.service;

import java.io.InputStream;
import java.util.List;

import com.gmli.pojo.Stu;

/**
 * 
 * @author LGM
 *
 */
public interface StuService {
	public void addStu(Stu stu);

	public void delStu(int stuId);

	public void updateStu(Stu stu);

	public Stu getStuById(int stuId);

	public List<Stu> getPageStu(int pageNum, int pageSize);

	public int getStuNum();

	InputStream getInputStream() throws Exception;
}
