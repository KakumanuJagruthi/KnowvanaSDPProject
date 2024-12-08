package com.klef.jfsd.springboot.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.klef.jfsd.springboot.model.Feedback;
import com.klef.jfsd.springboot.service.FeedbackService;

import org.springframework.web.bind.annotation.ModelAttribute;

import java.util.Date;

@Controller
public class FeedbackController {

    @Autowired
    private FeedbackService feedbackService;

    // Display the feedback form
    @GetMapping("/feedback")
    public String showFeedbackForm(Model model) {
        // Create an empty Feedback object for the form
        model.addAttribute("feedback", new Feedback());
        return "feedback";  // Return feedback.jsp (feedback form view)
    }

    // Handle form submission for feedback
    @PostMapping("/submitfeedback")
    public String submitFeedback(@ModelAttribute Feedback feedback, Model model) {
        try {
            // Set the created date to the current date
            feedback.setCreatedDate(new Date());

            // Save feedback using the service
            boolean isFeedbackSaved = feedbackService.saveFeedback(feedback);

            if (isFeedbackSaved) {
                // If feedback saved successfully, redirect to thank you page
                return "thankyou";
            } else {
                // If there's an error saving feedback, show an error message
                model.addAttribute("error", "Failed to submit feedback. Please try again.");
                return "feedback";  // Return to the feedback form
            }
        } catch (Exception e) {
            // Log and show an error message if something goes wrong
            model.addAttribute("error", "An error occurred while submitting feedback.");
            e.printStackTrace();
            return "feedback";
        }
    }
}
