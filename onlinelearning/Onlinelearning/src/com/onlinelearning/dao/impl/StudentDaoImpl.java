package com.onlinelearning.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Transaction;

import com.onlinelearning.dao.StudentDao;
import com.onlinelearning.entity.Student;
import com.onlinelearning.util.HibernateUtil;

public class StudentDaoImpl extends StudentDao {
	public boolean addStudent(Student s) {
		
			Transaction transaction = null;
			transaction = session.beginTransaction();
			//transaction.begin();
			session.save(s);
			// session.saveOrUpdate(s);
			// session.getTransaction().commit();
			transaction.commit();
			return true;
	}
	
	public boolean deleteStudent(Student s) {
		Transaction transaction = null;
		transaction = session.beginTransaction();
		String hql="delete from Student where name='"+s.getName()+"'";
		Query query = session.createQuery(hql);
		query.executeUpdate();
	//	session.getTransaction().commit();
		transaction.commit();
		return true;
	}
	
	public boolean updateStudent(Student s) {
		if(session==null || !session.isOpen()){
			session=HibernateUtil.getSession();
		}
		Transaction transaction = null;
		transaction = session.beginTransaction();
		s = (Student) session.merge(s);
		session.update(s);
//		session.saveOrUpdate(s);
//		session.getTransaction().commit();
		transaction.commit();
		return true;
	}
	
	public Student getStudent(Student s) {
		
		
		return null;
	}

	public Student getStudent(String name, String password) {
		Transaction transaction = null;
		transaction = session.beginTransaction();
		String hql="from Student where name='"+name+"' and password='"+password+"'";
		Query query = session.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Student> list = query.list();
		transaction.commit();
		if(list.size()!=0){
			return list.get(0);
		}
		return null;
	}

	public boolean getStudent(String name) {
		Transaction transaction = null;
		transaction = session.beginTransaction();
		String hql="from Student where name='"+name+"'";
		Query query = session.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Student> list = query.list();
		if(list.size()!=0){
			transaction.commit();
			return true;
		}
		return false;
	}
}
