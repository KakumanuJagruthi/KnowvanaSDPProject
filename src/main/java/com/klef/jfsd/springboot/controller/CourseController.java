package com.klef.jfsd.springboot.controller;

import com.klef.jfsd.springboot.model.Course;
import com.klef.jfsd.springboot.service.CourseService;

import jakarta.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;
import java.util.Optional;

@Controller
public class CourseController {
	
	@PostMapping("insertcourse")
    public ModelAndView insertcourse(HttpServletRequest request)
    {
       String category = request.getParameter("ccategory");
       String name=request.getParameter("cname");
     String desc = request.getParameter("cdesc");
     int credits=Integer.parseInt(request.getParameter("ccredits"));
     String url = request.getParameter("curl");
     
     Course course=new Course();
       course.setName(name);
       course.setCategory(category);
       
       String msg = employeeService.EmployeeRegistration(emp);
       
       ModelAndView mv = new ModelAndView("regsuccess");
       mv.addObject("message", msg);
     
       return mv;

    }
}
