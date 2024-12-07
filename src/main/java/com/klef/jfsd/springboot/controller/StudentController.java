package com.klef.jfsd.springboot.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Educator;
import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.service.StudentService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class StudentController 
{
  @Autowired
  private StudentService studentService;

  @GetMapping("/")
  public ModelAndView home()
  {
    ModelAndView mv = new ModelAndView();
    mv.setViewName("home");
    return mv;
  }
  
  @GetMapping("studreg")
  public ModelAndView studreg()
  {
    ModelAndView mv = new ModelAndView();
    mv.setViewName("studreg");
    return mv;
  }
  @GetMapping("/about")
  public String about() {
      return "about";
  }
  
    @PostMapping("insertstud")
    public ModelAndView insertstud(HttpServletRequest request)
    {
     String username = request.getParameter("susername");
     String name = request.getParameter("sname");
     String gender = request.getParameter("sgender");
     String dob = request.getParameter("sdob");
     String dept = request.getParameter("sdept");
     String location = request.getParameter("slocation");
     String email = request.getParameter("semail");
     String password = request.getParameter("spwd");
     String contact = request.getParameter("scontact");
     String status = "Registered";
    
     
       Student std = new Student();
       std.setUsername(username);
       std.setName(name);
       std.setGender(gender);
       std.setDepartment(dept);
       std.setDateofbirth(dob);
       std.setLocation(location);
       std.setEmail(email);
       std.setPassword(password);
       std.setContact(contact);
       std.setStatus(status);
       
       String msg = studentService.StudentRegistration(std);
       
       ModelAndView mv = new ModelAndView("regsuccess");
       mv.addObject("message", msg);
     
       return mv;

    }
    
    @PostMapping("checkstudlogin")
	public ModelAndView checkstudlogin(HttpServletRequest request)
	{
		
		ModelAndView mv=new ModelAndView();

		String susername=request.getParameter("susername");
		String spwd=request.getParameter("spwd");
		
		Student stud=studentService.checkstudlogin(susername, spwd);
		
		if(stud!=null) 
		{
			HttpSession session = request.getSession();
			session.setAttribute("student", stud);
			session.setAttribute("studentName", stud.getName());
			// employee is session variable
			mv.setViewName("studhome");
		}
		else
		{
			mv.setViewName("studloginfail");
			mv.addObject("message","Login Failed");
		}
		return mv;
	}
    
     @GetMapping("studlogin")
     public ModelAndView studlogin()
    {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("studlogin");
        return mv;
    } 
     
     @GetMapping("studhome")
     public ModelAndView studhome()
     {
       ModelAndView mv = new ModelAndView();
       mv.setViewName("studhome");
       return mv;
     }
     
     @GetMapping("studlogout")
     public ModelAndView studlogout(HttpServletRequest request)
     {
       HttpSession session = request.getSession();
       
       session.removeAttribute("student");
       ModelAndView mv = new ModelAndView();
       mv.setViewName("studlogout");
       return mv;
     }
     @GetMapping("studsession")
     public ModelAndView studsession()
     {
       ModelAndView mv = new ModelAndView();
       mv.setViewName("studsession");
       return mv;
     }
     
     @GetMapping("studprofile")
     public ModelAndView studprofile()
     {
       ModelAndView mv = new ModelAndView();
       mv.setViewName("studprofile");
       return mv;
     }
     
     @GetMapping("updatestud")
     public ModelAndView updatestudprofile()
     {
       ModelAndView mv = new ModelAndView();
       mv.setViewName("updatestud");
       return mv;
     }
     @PostMapping("update")
     public ModelAndView update(HttpServletRequest request)
     {
    	 int id =Integer.parseInt(request.getParameter("sid"));
      String name = request.getParameter("sname");
      String gender = request.getParameter("sgender");
      String dob = request.getParameter("sdob");
      String dept = request.getParameter("sdept");
      String location = request.getParameter("slocation");
      String password = request.getParameter("spwd");
      String contact = request.getParameter("scontact");


      	Student stud = new Student();
        stud.setId(id);
        stud.setName(name);
        stud.setGender(gender);
        stud.setDepartment(dept);
        stud.setDateofbirth(dob);
        stud.setLocation(location);
        stud.setPassword(password);
        stud.setContact(contact);
        
        String msg = studentService.updatestud(stud);
        
        ModelAndView mv = new ModelAndView("updatesuccess");
        mv.addObject("message", msg);
      
        return mv;

     }
     
     
  
  
}