package com.klef.jfsd.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.klef.jfsd.springboot.model.Feedback;

public interface FeedbackRepository extends JpaRepository<Feedback, Integer> {
    // Custom queries can be added here if necessary
}
