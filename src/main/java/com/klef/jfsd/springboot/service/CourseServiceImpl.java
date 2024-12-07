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
    public String CourseRegistration(Course course) {
      courseRepository.save(course);
      return "Created a new Course"+course.getName()+"Successfully !!";
    }

}
