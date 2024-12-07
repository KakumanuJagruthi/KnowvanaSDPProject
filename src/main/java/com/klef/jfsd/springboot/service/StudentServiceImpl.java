package com.klef.jfsd.springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.repository.StudentRepository;

@Service
public class StudentServiceImpl implements StudentService
{
	@Autowired
	private StudentRepository studentRepository;

	@Override
	public String StudentRegistration(Student stud) {
		studentRepository.save(stud);
		return "Hi, "+stud.getName()+"Thank You for Registering. You Are Successfully Registered!!";
	}

	@Override
	public Student checkstudlogin(String username, String pwd) {
		
		return studentRepository.checkstudlogin(username, pwd);
	}

	@Override
	public String updatestud(Student s) {
		Student stud = studentRepository.findById(s.getId()).get();
		stud.setContact(s.getContact());
		stud.setDateofbirth(s.getDateofbirth());
		stud.setDepartment(s.getDepartment());
		stud.setGender(s.getGender());
		stud.setLocation(s.getLocation());
		stud.setName(s.getName());
		stud.setPassword(s.getPassword());
		
		studentRepository.save(stud);
		return "Student Record Updated Successfully";
	}

}
