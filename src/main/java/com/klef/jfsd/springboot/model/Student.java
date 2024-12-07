package com.klef.jfsd.springboot.model;

import java.util.List;
import java.util.Set;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.Table;
import jakarta.persistence.JoinTable;
import jakarta.persistence.JoinColumn;


@Entity
@Table(name = "student_table")
public class Student 
{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="stud_id")
	private int id;
	@Column(name = "stud_username", length = 50)
	private String username;
	@Column(name="stud_email",nullable=false,unique = true,length = 50)
	private String email;
	@Column(name="stud_password",length = 50,nullable = false)
	private String password;
	@Column(name="stud_location",nullable=false,length=50)
	private String location;
	@Column(name="stud_contact",nullable=false,unique = true,length = 20)
	private String contact;
	@Column(name="stud_name",nullable=false,length = 50)
	private String name;
	@Column(name="stud_gender",nullable=false,length = 20)
	private String gender;
	@Column(name="stud_dob",nullable=false,length = 20)
	private String dateofbirth;
    @Column(name="stud_department",nullable=false,length = 50)
	private String department;
    @Column(name="stud_status",nullable=false,length = 50)
    private String status;
    @ManyToMany
    @JoinTable(
        name = "student_courses", 
        joinColumns = @JoinColumn(name = "student_id"), 
        inverseJoinColumns = @JoinColumn(name = "course_id")
    )
    private Set<Course> enrolledCourses;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getDateofbirth() {
		return dateofbirth;
	}
	public void setDateofbirth(String dateofbirth) {
		this.dateofbirth = dateofbirth;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public Set<Course> getEnrolledCourses() {
		return enrolledCourses;
	}
	public void setEnrolledCourses(Set<Course> enrolledCourses) {
		this.enrolledCourses = enrolledCourses;
	}


}
