package edu.fzu.tmall.util;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateUtil {
	private static SessionFactory sessionFactory = null; // SessionFactory对象
	// 静态块
    
	static {
		try {
			//1.加载配置文件
			Configuration cfg = new Configuration().configure(); // 加载Hibernate配置文件
			//2.创建sessionFactory   --JDBC 连接池
			sessionFactory = cfg.buildSessionFactory();
			
			
	        
			
			//StandardServiceRegistry sr=new StandardServiceRegistryBuilder().configure().build();
			
			//sessionFactory = new MetadataSources(sr).buildMetadata().buildSessionFactory();
			

		} catch (Exception e) {
			System.err.println("创建会话工厂失败");
			e.printStackTrace();
		}
	}


	/**
	 * 获取Session
	 * @return session
	 */
    public static Session getCurrentSession(){
    	Session session = sessionFactory.getCurrentSession();
        return  session;
    }

	/**
	 * 重建会话工厂
	 */
	public static void rebuildSessionFactory() {
		try {
			//1.加载配置文件
			Configuration cfg = new Configuration().configure(); // 加载Hibernate配置文件
			//2.创建sessionFactory   --JDBC 连接池
			sessionFactory = cfg.buildSessionFactory();
			
			//StandardServiceRegistry sr=new StandardServiceRegistryBuilder().configure().build();
			
			//sessionFactory =new MetadataSources(sr).buildMetadata().buildSessionFactory();
		} catch (Exception e) {
			System.err.println("创建会话工厂失败");
			e.printStackTrace();
		}
	}

	/**
	 * 获取SessionFactory对象
	 * 
	 * @return SessionFactory对象
	 */
	public static SessionFactory getSessionFactory() {
		return sessionFactory;
	}


}
