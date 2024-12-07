package com.klef.jfsd.springboot.service;

import com.klef.jfsd.springboot.model.Student;

public interface StudentService
{
	public String StudentRegistration(Student stud);
	  public Student checkstudlogin(String username,String pwd);
	  public String updatestud(Student s);
}
