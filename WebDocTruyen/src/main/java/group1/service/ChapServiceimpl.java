package group1.service;

import java.util.LinkedList;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;

import group1.model.Chap;
import group1.util.HibernateUtil;

public class ChapServiceimpl implements IChapService{
	Session session = null;
	
	@Override
	public List<Chap> getListChap(int idTr) {
		  session = HibernateUtil.getSessionFactory().openSession();
		  List<Chap> listChap = new LinkedList<Chap>();
	      try {
	         Query query = session.createQuery("FROM  Chap  WHERE truyen.id = :id");
	         query.setParameter("id", idTr);
	         listChap = query.list();
	      } catch (HibernateException e) {
	         e.printStackTrace(); 
	      } finally {
	    	  if(session!=null){
					session.close();
				}
	      }
	      return listChap;
	}

	@Override
	public Chap getChap(int idChap) {
	   session = HibernateUtil.getSessionFactory().openSession();
	   String sql = " FROM Chap WHERE ID_Chap=:id";
       Query query = session.createQuery(sql);
       query.setParameter("id", idChap);
       Chap chap = (Chap) query.uniqueResult();
       session.close();
       return chap;
	}

	@Override
	public void addChap(Chap chap) {
		// TODO Auto-generated method stub
		
	}

}
