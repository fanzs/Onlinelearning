package com.onlinelearning.entity;

import java.util.HashSet;
import java.util.Set;

public class Video {
	private int id;
	private String name;
	private String introduction;
	private String filePath;
	private double price;
	private String date;
	private String category;
	private Teacher teacher;
	private Set<Comments> comments=new HashSet<Comments>();
	private Set<Student> students=new HashSet<Student>();
	
	
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public Video() {
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getIntroduction() {
		return introduction;
	}
	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public Set<Student> getStudents() {
		return students;
	}
	public void setStudents(Set<Student> students) {
		this.students = students;
	}
	public Teacher getTeacher() {
		return teacher;
	}
	public void setTeacher(Teacher teacher) {
		this.teacher = teacher;
	}
	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}
	public String getFilePath() {
		return filePath;
	}
	
	
	public Video(int id, String name, String introduction, String filePath,
			double price, String date) {
		super();
		this.id = id;
		this.name = name;
		this.introduction = introduction;
		this.filePath = filePath;
		this.price = price;
		this.date = date;
	}
	@Override
	public String toString() {
		return "Video [date=" + date + ", filePath=" + filePath + ", id=" + id
		+ ", introduction=" + introduction + ", name=" + name
		+ ", price=" + price + "]";
	}
	public Set<Comments> getComments() {
		return comments;
	}
	public void setComments(Set<Comments> comments) {
		this.comments = comments;
	}
}
