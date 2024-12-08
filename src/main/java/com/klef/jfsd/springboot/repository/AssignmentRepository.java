package com.klef.jfsd.springboot.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.klef.jfsd.springboot.model.Assignment;

public interface AssignmentRepository extends JpaRepository<Assignment, Integer> {

    @Query("SELECT a FROM Assignment a WHERE a.courseId = :courseId AND a.dueDate > CURRENT_DATE")
    List<Assignment> findUpcomingAssignmentsByCourseId(int courseId);
}

