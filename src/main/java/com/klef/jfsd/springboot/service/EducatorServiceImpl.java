package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Course;
import com.klef.jfsd.springboot.model.Educator;
import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.repository.CourseRepository;
import com.klef.jfsd.springboot.repository.EducatorRepository;
import com.klef.jfsd.springboot.repository.StudentRepository;

@Service
public class EducatorServiceImpl implements EducatorService
{
	@Autowired
	private StudentRepository studentRepository;
	
	@Autowired
	private EducatorRepository educatorRepository;
	
	@Autowired
	private CourseRepository courseRepository;

	@Override
	public List<Student> ViewAllStudents() {
		
		return studentRepository.findAll();
	}

	@Override
	public Educator checkeducatorlogin(String uname, String pwd) {
		
		return educatorRepository.checkeducatorlogin(uname, pwd);
	}

	@Override
	public String deletestud(int sid) {
		studentRepository.deleteById(sid);
		return "Deleted Successfully";
	}

	@Override
	public long studcount() {
		
		return studentRepository.count();
	}
	
	public List<Student> getAllStudents() {
	    return studentRepository.findAll(); // Get all students from the database
	}

	

	

}
