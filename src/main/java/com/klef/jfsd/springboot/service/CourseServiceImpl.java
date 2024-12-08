package com.klef.jfsd.springboot.service;

import com.klef.jfsd.springboot.model.Course;
import com.klef.jfsd.springboot.model.Educator;
import com.klef.jfsd.springboot.repository.CourseRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CourseServiceImpl implements CourseService {
	
	@Autowired
	private CourseRepository courseRepository;

	@Override
	public String AddCourse(Course course) {
		courseRepository.save(course);
		return "Course Added Successfully!";
	}

	@Override
	public List<Course> ViewAllCourses() {
		return (List<Course>) courseRepository.findAll();
	}

	@Override
	public Course ViewCourseByID(int courseid) {
		return courseRepository.findById(courseid).get();
	}

	@Override
public List<Course> viewallcoursesbycategory(String category) {
		return courseRepository.viewallcoursesbycategory(category);
	}
	

   
}
