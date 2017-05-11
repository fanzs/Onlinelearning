package com.onlinelearning.dao;

import java.util.List;

import com.onlinelearning.entity.Student;
import com.onlinelearning.entity.Teacher;
import com.onlinelearning.entity.Video;
import com.onlinelearning.util.HibernateUtil;

public abstract class VideoDao extends HibernateUtil {
	public boolean addVideo(Video v){
		return true;
	}
	
	public boolean deleteVideo(String name){
		return true;
	}
	
	public Video getVideo(String name){
		return null;
	}
	
	public boolean updateVideo(Video v){
		return true;
	}

	public Video getVideoInfo(int v_id){
		return null;
	}
	public List<Video> getVideos(Student student) {
		return null;
	}

	public List<Video> getVideos(Teacher teacher) {
		return null;
	}

	public List<Video> getAllVideos() {
		return null;
	}

	public List<Video> getVideosResult(String category) {
		return null;
	}

	public Video getVideo(int id) {
		return null;
	}

	public List<Video> find(String keyword) {
		return null;
	}
	
}
