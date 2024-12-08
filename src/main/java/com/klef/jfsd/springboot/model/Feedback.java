package com.klef.jfsd.springboot.model;
import java.util.Date;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "feedback")
public class Feedback {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    private String name;

    private String email;

    @Column(name = "course_id")
    private int courseId;

    private int rating;  // Rating column (rating from 1 to 5)

    @Column(name = "feedback_text")
    private String feedbackText;

    @Column(name = "created_date")
    private Date createdDate;  // Timestamp for when the feedback is created

    // Default constructor
    public Feedback() {}

    // Constructor with parameters
    public Feedback(String name, String email, int courseId, int rating, String feedbackText, Date createdDate) {
        this.name = name;
        this.email = email;
        this.courseId = courseId;
        this.rating = rating;
        this.feedbackText = feedbackText;
        this.createdDate = createdDate;
    }

    // Getters and setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getCourseId() {
        return courseId;
    }

    public void setCourseId(int courseId) {
        this.courseId = courseId;
    }

    public int getRating() {
        return rating;
    }

    public void setRating(int rating) {
        this.rating = rating;
    }

    public String getFeedbackText() {
        return feedbackText;
    }

    public void setFeedbackText(String feedbackText) {
        this.feedbackText = feedbackText;
    }

    public Date getCreatedDate() {
        return createdDate;
    }

    public void setCreatedDate(Date createdDate) {
        this.createdDate = createdDate;
    }

    @Override
    public String toString() {
        return "Feedback [id=" + id + ", name=" + name + ", email=" + email + ", courseId=" + courseId + ", rating=" + rating + ", feedbackText=" + feedbackText + ", createdDate=" + createdDate + "]";
    }
}
