package com.klef.jfsd.springboot.repository;

import com.klef.jfsd.springboot.model.Course;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CourseRepository extends JpaRepository<Course, Integer> {
    // You can define custom query methods here, if necessary
}
