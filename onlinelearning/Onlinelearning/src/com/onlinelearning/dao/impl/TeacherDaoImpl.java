package com.onlinelearning.dao.impl;

import java.util.List;


import org.hibernate.Query;
import org.hibernate.Transaction;

import com.onlinelearning.dao.TeacherDao;
import com.onlinelearning.entity.Teacher;
import com.onlinelearning.util.HibernateUtil;

public class TeacherDaoImpl extends TeacherDao{
	public boolean addTeacher(Teacher t) {
		Transaction transaction = null;
		transaction = session.beginTransaction();
		String hql = "from Teacher where name=? and password=?";
		Query query = session.createQuery(hql);
		query.setParameter(0, t.getName());
		query.setParameter(1, t.getPassword());
		
		if(query.list().size()>0)
		{
			return false;
		}
		else{
			session.save(t);
			transaction.commit();
			return true;
		}
		
	}
	
	public boolean deleteTeacher(Teacher t) {
//		Configuration config=new Configuration().configure();
//		@SuppressWarnings("deprecation")
//		SessionFactory sessionFactory = config.buildSessionFactory();
//		Session session = sessionFactory.getCurrentSession();
		if(session==null || !session.isOpen()){
			session=HibernateUtil.getSession();
		}
		session.beginTransaction();
		String hql="delete from Teacher where id=:id";
		Query query = session.createQuery(hql);
		query.setParameter("id",t.getId());
		query.executeUpdate();
		session.getTransaction().commit();
		return true;
	}
	
	public boolean updateTeacher(Teacher t) {
//		Teacher  mergedEntity = (Teacher) session.merge(t);
//		session.saveOrUpdate(mergedEntity);
//		Configuration config=new Configuration().configure();
//		@SuppressWarnings("deprecation")
//		SessionFactory sessionFactory = config.buildSessionFactory();
//		Session session = sessionFactory.getCurrentSession();
		if(session==null || !session.isOpen()){
			session=HibernateUtil.getSession();
		}
		session.beginTransaction();
		session.update(t);
		session.getTransaction().commit();
		return false;
	}
	
	public Teacher getTeacher(Teacher t) {
		return null;
	}
	
	
	
	public  Teacher getTeacher(String username,String password) {
		Transaction transaction = null;
		transaction = session.beginTransaction();
		String hql="from Teacher where name=? and password=?";
		Query query = session.createQuery(hql);
		query.setParameter(0, username);
		query.setParameter(1, password);
		@SuppressWarnings("unchecked")
		List<Teacher> list=query.list();
		transaction.commit();
		if(list.size()!=0)
			return list.get(0);
		return null;
	}
	
	public boolean updateTeacher(Teacher t, String phone, String email) {
//		Configuration config=new Configuration().configure();
//		@SuppressWarnings("deprecation")
//		SessionFactory sessionFactory = config.buildSessionFactory();
//		Session session = sessionFactory.getCurrentSession();
		if(session==null || !session.isOpen()){
			session=HibernateUtil.getSession();
		}
		
		session.beginTransaction();
		String hql="UPDATE Teacher set phone= :p , email= :e where id= :id";
		Query query = session.createQuery(hql);
		query.setParameter("p", phone);
		query.setParameter("e", email);
		query.setParameter("id",t.getId());
		query.executeUpdate();
		
		session.getTransaction().commit();
		return true;
	}
	@SuppressWarnings("unchecked")
	public boolean getTeacher(String username) {
//		Configuration config=new Configuration().configure();
//		@SuppressWarnings("deprecation")
//		SessionFactory sessionFactory = config.buildSessionFactory();
//		Session session = sessionFactory.getCurrentSession();
		if(session==null || !session.isOpen()){
			session=HibernateUtil.getSession();
		}
		session.beginTransaction();
		
		String hql="from Teacher where name= :username";
		Query query = session.createQuery(hql);
		query.setParameter("username", username);
		List<Teacher> list = query.list();
		
		session.getTransaction().commit();
		if(list.size()!=0){
			return true;
		}else{
			return false;			
		}
		
	}
	
	public List<Teacher> getAllTeachers() {
//		Configuration config=new Configuration().configure();
//		@SuppressWarnings("deprecation")
//		SessionFactory sessionFactory = config.buildSessionFactory();
//		Session session = sessionFactory.getCurrentSession();
		
		if(session==null || !session.isOpen()){
			session=HibernateUtil.getSession();
		}
		session.beginTransaction();
		String hql="from Teacher";
		Query query = session.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Teacher> list = query.list();
		session.getTransaction().commit();
		
		return list;
	}
}
