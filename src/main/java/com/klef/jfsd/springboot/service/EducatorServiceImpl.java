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
	public String assignCourseToStudent(int studentId, int courseId) {
	    // Fetch the student and course by their IDs
	    Student student = studentRepository.findById(studentId).orElse(null);
	    Course course = courseRepository.findById(courseId).orElse(null);
	    
	    if (student != null && course != null) {
	        // Assuming there's a ManyToMany relationship between Student and Course
	        student.getEnrolledCourses().add(course);
	        studentRepository.save(student); // Save the updated student
	        
	        return "Course successfully assigned to the student.";
	    } else {
	        return "Student or Course not found.";
	    }
	}
	public List<Student> getAllStudents() {
	    return studentRepository.findAll(); // Get all students from the database
	}

	public List<Course> getAllCourses() {
	    return courseRepository.findAll(); // Get all courses from the database
	}


	

}
