package com.klef.jfsd.springboot.controller;

import java.sql.Blob;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Course;
import com.klef.jfsd.springboot.model.Educator;
import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.service.CourseService;
import com.klef.jfsd.springboot.service.EducatorService;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class EducatorController {

    @Autowired
    private EducatorService educatorService;

    @Autowired
    private CourseService courseService;

    @GetMapping("assigncourse")
    public ModelAndView assignCourseToStudent(@RequestParam("studentId") int studentId,
                                               @RequestParam("courseId") int courseId) {
        ModelAndView mv = new ModelAndView();
        String result = educatorService.assignCourseToStudent(studentId, courseId);
        mv.addObject("message", result);
        mv.setViewName("assigncourse");
        return mv;
    }

    @GetMapping("viewassign")
    public ModelAndView viewAssignPage() {
        ModelAndView mv = new ModelAndView();
        List<Student> students = educatorService.getAllStudents();
        List<Course> courses = educatorService.getAllCourses();
        mv.addObject("students", students);
        mv.addObject("courses", courses);
        mv.setViewName("assigncourse");
        return mv;
    }

    
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
}
