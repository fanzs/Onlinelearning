package com.onlinelearning.util;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;

public class HibernateUtil {
	
	protected SessionFactory sessionFactory;
	protected Configuration config;
	protected ServiceRegistry serviceRegistry;
	protected Session session;
	
	public HibernateUtil(){
		config = new Configuration().configure();
		
		 serviceRegistry = new StandardServiceRegistryBuilder().applySettings(config.getProperties()).build();
		
		sessionFactory = config.buildSessionFactory(serviceRegistry);
		
		 session = sessionFactory.getCurrentSession();
	}
	
	public static Session getSession(){
		
		Configuration conf = new Configuration().configure();
		
		ServiceRegistry serviceRegistry = new StandardServiceRegistryBuilder().applySettings(conf.getProperties()).build();
		
		SessionFactory sessionFactory = conf.buildSessionFactory(serviceRegistry);
		
		return sessionFactory.getCurrentSession();
	}
	/*
	@SuppressWarnings("deprecation")
	public static Session getCurrentSession(){
		Configuration conf=new Configuration().configure();
		SessionFactory sessionFactory = conf.buildSessionFactory();
		session = sessionFactory.getCurrentSession();
		return session;
	}*/
}
