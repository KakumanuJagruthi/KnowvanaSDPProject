package com.klef.jfsd.springboot.model;

import java.util.Date;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Lob;
import jakarta.persistence.Table;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;

@Entity
@Table(name = "assignments_table")
public class Assignment {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "assignment_id")
    private int id;

    @Column(name = "title", nullable = false, length = 200)
    private String title;

    @Column(name = "description", nullable = false, length = 500)
    private String description;

    @Column(name = "due_date")
    @Temporal(TemporalType.DATE)
    private Date dueDate;

    @Column(name = "course_id")
    private int courseId;

    @Column(name = "status", length = 50)
    private String status;

    @Column(name = "marks")
    private int marks;

    // Added field to store the PDF file as binary data
    @Lob
    @Column(name = "pdf_file")
    private byte[] pdfFile; // This will store the PDF file as a binary large object

    // Constructors
    public Assignment() {}

    public Assignment(int id, String title, String description, Date dueDate, int courseId, String status, int marks, byte[] pdfFile) {
        this.id = id;
        this.title = title;
        this.description = description;
        this.dueDate = dueDate;
        this.courseId = courseId;
        this.status = status;
        this.marks = marks;
        this.pdfFile = pdfFile;
    }

    // Getters and Setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Date getDueDate() {
        return dueDate;
    }

    public void setDueDate(Date dueDate) {
        this.dueDate = dueDate;
    }

    public int getCourseId() {
        return courseId;
    }

    public void setCourseId(int courseId) {
        this.courseId = courseId;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public int getMarks() {
        return marks;
    }

    public void setMarks(int marks) {
        this.marks = marks;
    }

    public byte[] getPdfFile() {
        return pdfFile;
    }

    public void setPdfFile(byte[] pdfFile) {
        this.pdfFile = pdfFile;
    }

    @Override
    public String toString() {
        return "Assignment [id=" + id + ", title=" + title + ", description=" + description + ", dueDate=" + dueDate
                + ", courseId=" + courseId + ", status=" + status + ", marks=" + marks + "]";
    }
}
