package com.onlinelearning.service;

import java.util.List;
import com.onlinelearning.dao.VideoDao;
import com.onlinelearning.dao.impl.VideoDaoImpl;
import com.onlinelearning.entity.Student;
import com.onlinelearning.entity.Teacher;
import com.onlinelearning.entity.Video;

public class VideoService {
	
	private static VideoService vsi=null;
	
	private VideoDao dao=new VideoDaoImpl();
	
	static{
		if(vsi==null){
			vsi=new VideoService();
		}
	}
	
	public static VideoService getInstance(){
		return vsi;
	}
	
	public boolean addVideo(Video v){
		vsi.dao.addVideo(v);
		return true;
	}
	
	public boolean deleteVideo(String name){
		vsi.dao.deleteVideo(name);
		return true;
	}
	
	public Video getVideo(String name){
		
		return vsi.dao.getVideo(name);
	}
	
	public boolean updateVideo(Video v){
		vsi.dao.updateVideo(v);
		return true;
	}

	public List<Video> getVideos(Student student) {
		return vsi.dao.getVideos(student);
	}

	public List<Video> getVideos(Teacher teacher) {
		return vsi.dao.getVideos(teacher);
	}
	
	public List<Video> getVideosResult(String category){
		List<Video> list=vsi.dao.getVideosResult(category);
		return list;
	}
	
	public List<Video> getAllVideos() {
		
		return vsi.dao.getAllVideos();
	}

	public Video getVideo(int id) {
		return vsi.dao.getVideo(id);
	}

	public List<Video> find(String keyword) {
		return vsi.dao.find(keyword);
	}
}
