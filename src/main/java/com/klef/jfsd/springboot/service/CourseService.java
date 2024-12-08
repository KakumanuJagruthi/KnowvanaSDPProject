package com.klef.jfsd.springboot.service;

import com.klef.jfsd.springboot.model.Course;
import com.klef.jfsd.springboot.model.Educator;
import com.klef.jfsd.springboot.model.Student;

import java.util.List;

public interface CourseService {
	 public String AddCourse(Course course);
	 public List<Course> ViewAllCourses();
	   public Course ViewCourseByID(int courseid);
	   public List<Course> viewallcoursesbycategory(String category);
}
