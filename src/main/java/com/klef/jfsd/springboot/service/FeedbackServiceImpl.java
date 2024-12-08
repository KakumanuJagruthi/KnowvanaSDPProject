package com.klef.jfsd.springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Feedback;
import com.klef.jfsd.springboot.repository.FeedbackRepository;

import java.util.Date;

@Service
public class FeedbackServiceImpl implements FeedbackService {

    @Autowired
    private FeedbackRepository feedbackRepository;

    public boolean saveFeedback(Feedback feedback) {
        try {
            // Set the created date to current date
            feedback.setCreatedDate(new Date());
            feedbackRepository.save(feedback);  // Save feedback in the database
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
}
