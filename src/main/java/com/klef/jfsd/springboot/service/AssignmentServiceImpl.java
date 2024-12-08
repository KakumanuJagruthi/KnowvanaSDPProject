package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Assignment;
import com.klef.jfsd.springboot.repository.AssignmentRepository;

@Service
public class AssignmentServiceImpl implements AssignmentService {

    @Autowired
    private AssignmentRepository assignmentRepository;
    
    public String addAssignment(Assignment assignment) {
        // Save the assignment to the database
        assignmentRepository.save(assignment);
        return "Assignment added successfully!";
    }

    // Create or Update an assignment
    public String updateAssignment(Assignment assignment) {
        assignmentRepository.save(assignment);
        return "Assignment updated successfully!";
    }

    // Fetch an assignment by its ID
    public Assignment getAssignmentById(int id) {
        return assignmentRepository.findById(id).orElse(null);
    }

    // Fetch all assignments
    public List<Assignment> getAllAssignments() {
        return assignmentRepository.findAll();
    }

    // Delete an assignment by its ID
    public String deleteAssignment(int id) {
        assignmentRepository.deleteById(id);
        return "Assignment deleted successfully!";
    }
}
