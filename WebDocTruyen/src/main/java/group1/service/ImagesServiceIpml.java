package group1.service;

import java.util.LinkedList;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;

import group1.model.Chap;
import group1.model.Images;
import group1.util.HibernateUtil;

public class ImagesServiceIpml implements IImagesService{
	Session session = null;
	
	@Override
	public List<Images> getList(int idChap) {
		  session = HibernateUtil.getSessionFactory().openSession();
		  List<Images> listImg = new LinkedList<Images>();
	      try {
	         Query query = session.createQuery("FROM  Images  WHERE chap.ID_Chap = :id");
	         query.setParameter("id", idChap);
	         listImg = query.list();
	      } catch (HibernateException e) {
	         e.printStackTrace(); 
	      } finally {
	    	  if(session!=null){
					session.close();
				}
	      }
	      return listImg;
		
	}

}
