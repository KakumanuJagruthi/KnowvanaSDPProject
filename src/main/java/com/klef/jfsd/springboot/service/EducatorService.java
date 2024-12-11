package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Course;
import com.klef.jfsd.springboot.model.Educator;
import com.klef.jfsd.springboot.model.Student;

public interface EducatorService 
{
	public List<Student> ViewAllStudents();
	  public Educator checkeducatorlogin(String uname,String pwd);
	  public String deletestud(int sid);
	  public long studcount();
	//public List<Student> getAllStudents();

}
