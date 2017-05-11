package com.onlinelearning.entity;

import java.util.HashSet;
import java.util.Set;

public class Teacher {

	private int id;
	private String name;
	private String phone;
	private String email;
	private String password;
	private Set<Video> videos=new HashSet<Video>();
	private Set<Comments> comments=new HashSet<Comments>();
	
	
	public Teacher() {
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
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
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

	public Set<Video> getVideos() {
		return videos;
	}

	public void setVideos(Set<Video> videos) {
		this.videos = videos;
	}

	public Set<Comments> getComments() {
		return comments;
	}

	public void setComments(Set<Comments> comments) {
		this.comments = comments;
	}
	
	@Override
	public String toString() {
		return "Teacher [email=" + email + ", id=" + id + ", name=" + name
		+ ", password=" + password + ", phone=" + phone + "]";
	}
}
