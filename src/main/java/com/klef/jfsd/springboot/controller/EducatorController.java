package com.klef.jfsd.springboot.controller;

import java.sql.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Assignment;
import com.klef.jfsd.springboot.model.Educator;
import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.service.AssignmentService;
import com.klef.jfsd.springboot.service.EducatorService;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class EducatorController {

    @Autowired
    private EducatorService educatorService;
    
    @Autowired
    private AssignmentService assignmentService;

    @GetMapping("edulogin")
    public ModelAndView edulogin() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("edulogin");
        return mv;
    }

    @GetMapping("eduhome")
    public ModelAndView eduhome() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("eduhome");

        long count = educatorService.studcount();
        mv.addObject("count", count);

        return mv;
    }

    @PostMapping("checkeducatorlogin")
    public ModelAndView checkeducatorlogin(HttpServletRequest request) {
        ModelAndView mv = new ModelAndView();

        String euname = request.getParameter("euname");
        String epwd = request.getParameter("epwd");

        Educator educator = educatorService.checkeducatorlogin(euname, epwd);

        if (educator != null) {
            mv.setViewName("eduhome");
            long count = educatorService.studcount();
            mv.addObject("count", count);
        } else {
            mv.setViewName("eduloginfail");
            mv.addObject("message", "login failed");
        }
        return mv;
    }
    @GetMapping("edusession")
    public ModelAndView edusession()
    {
      ModelAndView mv = new ModelAndView();
      mv.setViewName("edusession");
      return mv;
    }

    @GetMapping("deletestud")
    public ModelAndView deletestud() {
        ModelAndView mv = new ModelAndView();
        List<Student> studlist = educatorService.ViewAllStudents();
        mv.setViewName("deletestud");
        mv.addObject("studlist", studlist);
        return mv;
    }

    @GetMapping("delete")
    public String delete(@RequestParam("id") int sid) {
        educatorService.deletestud(sid);
        return "redirect:/deletestud";
    }

    @GetMapping("viewallstud")
    public ModelAndView viewallstud() {
        ModelAndView mv = new ModelAndView();
        List<Student> studlist = educatorService.ViewAllStudents();
        mv.setViewName("viewallstud");
        mv.addObject("studlist", studlist);
        return mv;
    }

    @GetMapping("edulogout")
    public ModelAndView edulogout() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("edulogin");
        return mv;
    }
    
    @GetMapping("addassignment")
    public ModelAndView addcoursedemo()
    {
 	   ModelAndView mv = new ModelAndView("addassignment");
 	   return mv;
    }
    	
    

}
