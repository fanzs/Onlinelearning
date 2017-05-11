package com.onlinelearning.servlet;

import java.io.File;
import java.io.IOException;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jspsmart.upload.SmartUpload;
import com.onlinelearning.entity.Teacher;
import com.onlinelearning.entity.Video;
import com.onlinelearning.service.VideoService;

public class SmartUploadServlet extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private List<Video> videolist=new ArrayList<Video>(); 
	//request.getSession().setAttribute("myVideoList", videolist);
	
	private List<Video> allVideoList=new ArrayList<Video>(); 
	//request.getSession().setAttribute("allVideoList", allVideoList);
	

	public SmartUploadServlet() {
		super();
	}

	
	public void destroy() {
		super.destroy(); 
	}

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request,response);
	
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Teacher t=(Teacher) request.getSession().getAttribute("user");
		//获取文件储存路径
		String filePath=getServletContext().getRealPath("/")+"videos\\"+t.getId();
		File file=new File(filePath);
		if(!file.exists()){
			file.mkdirs();
		}
//System.out.println(filePath);
		//设置上传结果，默认为"上传成功！"
		String result="上传成功！";
		//定义对象
		SmartUpload su=new SmartUpload();
		//设置编码格式
		su.setCharset("utf-8");
		//初始化对象
		su.initialize(getServletConfig(), request, response);
		//
		su.setMaxFileSize(1024*1024*1024*300);
		
		su.setTotalMaxFileSize(1024*1024*1024*300);
		
		su.setAllowedFilesList("mp4,avi,rmvb");
		
		try {
			su.upload();
			
			su.save(filePath);
		} catch (Exception e) {
			result="上传失败！";
			if(e.getMessage().indexOf("1015")!=-1){
				result="上传失败！上传类型不正确！";
			}else if(e.getMessage().indexOf("1010")!=-1){
				result="上传失败！上传类型不正确！";
			}else if(e.getMessage().indexOf("1105")!=-1){
				result="上传失败！上传文件大小超过上限！";
			}else if(e.getMessage().indexOf("1110")!=-1){
				result="上传失败！上传文件总大小超过上限！";
			} 
			e.printStackTrace();
		}
		
		String strPrice = su.getRequest().getParameter("price");
		String descr = su.getRequest().getParameter("descr");
		String category = su.getRequest().getParameter("category");
		double price=0;
		if(strPrice!=null){
			price=Double.parseDouble(strPrice);
		}
		
		
		if("上传成功！".equals(result)){
			com.jspsmart.upload.File tempFile=su.getFiles().getFile(0);
			Video v=new Video();
			v.setName(tempFile.getFileName());
			v.setFilePath("videos/"+t.getId()+"/"+tempFile.getFileName());
//System.out.println(v.getFilePath());
			Date date=new Date(System.currentTimeMillis());
			v.setDate(date.toString());
			v.setPrice(price);
			v.setIntroduction(descr);
			v.setCategory(category);
			v.setTeacher(t);
			
			VideoService.getInstance().addVideo(v);
		}
		//List<Video> 
		videolist=VideoService.getInstance().getVideos(t); 
		request.getSession().setAttribute("myVideoList", videolist);
		
		//List<Video> 
		allVideoList=VideoService.getInstance().getAllVideos(); 
		request.getSession().setAttribute("allVideoList", allVideoList);
		
		request.getSession().setAttribute("result", result);
		request.getRequestDispatcher("/jsp/teacher/teacher_video.jsp").forward(request, response);
	}

	
	public void init() throws ServletException {
	}


	public List<Video> getVideolist() {
		return videolist;
	}


	public void setVideolist(List<Video> videolist) {
		this.videolist = videolist;
	}


	public List<Video> getAllVideoList() {
		return allVideoList;
	}


	public void setAllVideoList(List<Video> allVideoList) {
		this.allVideoList = allVideoList;
	}
	
	
}
