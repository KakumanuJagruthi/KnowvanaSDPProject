package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Assignment;
import com.klef.jfsd.springboot.repository.AssignmentRepository;

@Service
public interface AssignmentService {

	public String addAssignment(Assignment assignment);
    // Create or Update an assignment
    public String updateAssignment(Assignment assignment);

    // Fetch an assignment by its ID
    public Assignment getAssignmentById(int id);
    // Fetch all assignments
    public List<Assignment> getAllAssignments();

    // Delete an assignment by its ID
    public String deleteAssignment(int id) ;
}
