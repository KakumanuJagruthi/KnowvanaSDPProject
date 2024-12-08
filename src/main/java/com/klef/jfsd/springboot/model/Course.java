package com.klef.jfsd.springboot.model;

import java.sql.Blob;
import java.util.Date;

import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "course_table")
public class Course 
{
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  @Column(name="course_id")
  private int id;
  @Column(name="course_category",nullable = false,length = 100)
  private String category;
  @Column(name="course_name",nullable = false,length = 100)
  private String name;
  @Column(name="course_desc",nullable = false,length = 500)
  private String description;
  @Column(name="course_cost",nullable = false)
  private double cost;
  @Column(name="course_url",length = 200,nullable=false)
  private String url;
  @Column(name="course_image",nullable = false)
  private Blob image; // blob - binary large object
 
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getCategory() {
	return category;
}
public void setCategory(String category) {
	this.category = category;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getDescription() {
	return description;
}
public void setDescription(String description) {
	this.description = description;
}
public double getCost() {
	return cost;
}
public void setCost(double cost) {
	this.cost = cost;
}
public String getUrl() {
	return url;
}
public void setUrl(String url) {
	this.url = url;
}
public Blob getImage() {
	return image;
}
public void setImage(Blob image) {
	this.image = image;
}

}
