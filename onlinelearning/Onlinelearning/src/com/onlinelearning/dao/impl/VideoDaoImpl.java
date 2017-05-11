package com.onlinelearning.dao.impl;

import java.util.ArrayList;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Transaction;

//import org.hibernate.Session;
//import org.hibernate.SessionFactory;
//import org.hibernate.cfg.Configuration;
import com.onlinelearning.dao.VideoDao;
import com.onlinelearning.entity.Student;
import com.onlinelearning.entity.Teacher;
import com.onlinelearning.entity.Video;
import com.onlinelearning.util.HibernateUtil;

public class VideoDaoImpl extends VideoDao {
	public List<Video> getAllVideos() {
//		Configuration config=new Configuration().configure();
//		@SuppressWarnings("deprecation")
//		SessionFactory sessionFactory = config.buildSessionFactory();
//		Session session = sessionFactory.getCurrentSession();
		if(session==null || !session.isOpen()){
			session=HibernateUtil.getSession();
		}
//System.out.println(session+"000000000000000000000000000");
		session.beginTransaction();
		String hql="from Video ";
		Query query = session.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Video> list = query.list();
		session.getTransaction().commit();
		
		return list;
	}
	
	public boolean addVideo(Video v){
//		Configuration config=new Configuration().configure();
//		@SuppressWarnings("deprecation")
//		SessionFactory sessionFactory = config.buildSessionFactory();
//		Session session = sessionFactory.getCurrentSession();
		if(session==null || !session.isOpen()){
			session=HibernateUtil.getSession();
		}
		session.beginTransaction();
		session.save(v);
		session.getTransaction().commit();
		return true;
	}
	
	public boolean deleteVideo(String name){
		return true;
	}
	
	public Video getVideo(String name){
		return null;
	}
	
	public boolean updateVideo(Video v){
		if(session==null || !session.isOpen()){
			session=HibernateUtil.getSession();
		}
		session.beginTransaction();
		session.saveOrUpdate(v);
		session.getTransaction().commit();
		
		return true;
	}
	
	public List<Video> getVideos(Student s){
//		Configuration config=new Configuration().configure();
//		@SuppressWarnings("deprecation")
//		SessionFactory sessionFactory = config.buildSessionFactory();
//		Session session = sessionFactory.getCurrentSession();
		
		if(session==null || !session.isOpen()){
			session=HibernateUtil.getSession();
		}
		session.beginTransaction();
		//String hql="from Video,Student where Video.student.id = "+s.getId();
		String sql="select * from t_video where id in (select video_id from t_student_video where student_id ="+s.getId()+")";
//		Query query = session.createQuery(hql);
		SQLQuery query = session.createSQLQuery(sql);
		query.addEntity(Video.class);
		@SuppressWarnings("unchecked")
		List<Video> list = query.list();
		session.getTransaction().commit();
		
		return list;
	}
	
	public List<Video> getVideos(Teacher t){
//		Configuration config=new Configuration().configure();
//		@SuppressWarnings("deprecation")
//		SessionFactory sessionFactory = config.buildSessionFactory();
//		Session session = sessionFactory.getCurrentSession();
		if(session==null || !session.isOpen()){
			session=HibernateUtil.getSession();
		}
		session.beginTransaction();
		String hql="from Video where teacher.id = "+t.getId();
		
//System.out.println(hql);
		Query query = session.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Video> list = query.list();
		session.getTransaction().commit();
		return list;
	}
	
	public List<Video> getVideosResult(String category) {
		
//		Configuration config=new Configuration().configure();
//		@SuppressWarnings("deprecation")
//		SessionFactory sessionFactory = config.buildSessionFactory();
//		Session session = sessionFactory.getCurrentSession();
		if(session==null || !session.isOpen()){
			session=HibernateUtil.getSession();
		}
		session.beginTransaction();
		String hql="from Video where 1 = 1 ";
		if(category!=null){
			hql+=" and category = '"+category+"'";
		}
//System.out.println(hql);
		Query query = session.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Video> list = query.list();
		session.getTransaction().commit();
		return list;
	}
	
	@SuppressWarnings("unchecked")
	public Video getVideo(int id) {
//		Configuration config=new Configuration().configure();
//		@SuppressWarnings("deprecation")
//		SessionFactory sessionFactory = config.buildSessionFactory();
//		Session session = sessionFactory.getCurrentSession();
		if(session==null || !session.isOpen()){
			session=HibernateUtil.getSession();
		}
		session.beginTransaction();
		String hql="from Video where id = :video_id";
		Query query = session.createQuery(hql);
		query.setParameter("video_id", id);
		List<Video> list = query.list();
		
		session.getTransaction().commit();
		return list.get(0);
	}
	
	
	public List<Video> find(String keyword) {
		Transaction transaction = null;
		transaction = session.beginTransaction();
		String hql="from Video  where category = :category";
		Query query = session.createQuery(hql);
		query.setParameter("category", keyword);
		@SuppressWarnings("rawtypes")
		List list = query.list();
		List<Video> videoList = new ArrayList<Video>();
		if(list != null){
			for(int i=0;i<list.size();i++){
				videoList.add((Video)list.get(i));
			}
			transaction.commit();
			return videoList;
		}
		transaction.commit();
		return null;
	}
	
	public Video getVideoInfo(int v_id){
		Transaction transaction = null;
		transaction = session.beginTransaction();
		String hql="from Video  where id=?";
		Query query = session.createQuery(hql);
		query.setParameter(0, v_id);
		 Video video = new Video();
		 video = (Video)query.list().get(0);
		 transaction.commit();
		 if(video != null)
			 return video;
		 else
			 return null;

	}
}
