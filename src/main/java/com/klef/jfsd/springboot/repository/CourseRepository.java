package com.klef.jfsd.springboot.repository;

import com.klef.jfsd.springboot.model.Course;
import com.klef.jfsd.springboot.model.Educator;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import java.util.List;

@Repository
public interface CourseRepository extends CrudRepository<Course, Integer> {
	@Query("from Course c where c.category=?1")
	   public List<Course> viewallcoursesbycategory(String category);
	   
	   public List<Course> findByCategory(String category);
}
