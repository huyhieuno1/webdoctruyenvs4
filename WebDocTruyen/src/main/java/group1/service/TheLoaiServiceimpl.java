package group1.service;


import java.util.LinkedList;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;

import group1.model.TheLoai;

import group1.util.HibernateUtil;

public class TheLoaiServiceimpl implements ITheLoaiService{
	Session session = null;
	
	@Override
	public List<TheLoai> getList() {
		session = HibernateUtil.getSessionFactory().openSession();
		List<TheLoai> listTL = new LinkedList<TheLoai>();
	      try {
	         Query query = session.createQuery("FROM TheLoai");
	         listTL = query.list();
	      } catch (HibernateException e) {
	         e.printStackTrace(); 
	      } finally {
	    	  if(session!=null){
					session.close();
				}
	      }
	      return listTL;
		
	}


}
