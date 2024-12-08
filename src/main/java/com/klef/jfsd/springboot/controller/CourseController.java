package com.klef.jfsd.springboot.controller;

import java.io.IOException;
import java.sql.Blob;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Course;
import com.klef.jfsd.springboot.model.Educator;
import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.service.CourseService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class CourseController {

    @Autowired
    private CourseService courseService;
    @GetMapping("addcourse")
    public ModelAndView addcoursedemo()
    {
 	   ModelAndView mv = new ModelAndView("addcourse");
 	   return mv;
    }
    	
    @PostMapping("insertcourse")
    public ModelAndView insertproductdemo(HttpServletRequest request,@RequestParam("image") MultipartFile file) throws Exception
    {
    	String msg = null;
        ModelAndView mv = new ModelAndView();
        
        try {
            String category = request.getParameter("category");
            String name = request.getParameter("name");
            String description = request.getParameter("description");
            Double cost = Double.valueOf(request.getParameter("cost"));
            String courseurl = request.getParameter("url"); // Get the URL from the form
            
            // Handle the uploaded image
            byte[] bytes = file.getBytes();
            Blob blob = new javax.sql.rowset.serial.SerialBlob(bytes);

            // Create the Course object and set its fields
            Course course = new Course();
            course.setCategory(category);
            course.setName(name);
            course.setDescription(description);
            course.setCost(cost);
            course.setUrl(courseurl); // Set the URL here
            course.setImage(blob);
            
            // Call service to save the course
            msg = courseService.AddCourse(course);
            mv.setViewName("coursesuccess");
            mv.addObject("message", msg);
        } catch (Exception e) {
            msg = e.getMessage();
            mv.setViewName("courseerror");
            mv.addObject("message", msg);
        }
        return mv;
    }
    @GetMapping("viewallcourses")
    public ModelAndView viewallprodsdemo()
    {
 	   List<Course> courselist = courseService.ViewAllCourses();
 	   
 	   ModelAndView mv = new ModelAndView("viewallcourses");
 	   
 	   mv.addObject("courselist", courselist);
 	   
 	   return mv;
    }
    
    @GetMapping("viewallcoursesstud")
    public ModelAndView viewallstuddemo()
    {
 	   List<Course> courselist = courseService.ViewAllCourses();
 	   
 	   ModelAndView mv = new ModelAndView("viewallcoursesstud");
 	   
 	   mv.addObject("courselist", courselist);
 	   
 	   return mv;
    }
    @GetMapping("savedcourses")
    public ModelAndView viewallsaved()
    {
    	List<Course> courselist = courseService.ViewAllCourses();
  	   
  	   ModelAndView mv = new ModelAndView("viewallsavedcourses");
  	   
  	   mv.addObject("courselist", courselist);
  	   
  	   return mv;
    }
    
    @GetMapping("/saved")
    public ModelAndView saved()
    {
    
  	   ModelAndView mv = new ModelAndView("saved");    	   
  	   
  	   return mv;
    }
    
    
    @GetMapping("displaycourseimage")
    public ResponseEntity<byte[]> displayprodimagedemo(@RequestParam("id") int id) throws Exception
    {
      Course course =  courseService.ViewCourseByID(id);
      byte [] imageBytes = null;
      imageBytes = course.getImage().getBytes(1,(int) course.getImage().length());

      return ResponseEntity.ok().contentType(MediaType.IMAGE_JPEG).body(imageBytes);
      
    // Response Body, HTTP Status Code, Headers
    }
    
    
}
