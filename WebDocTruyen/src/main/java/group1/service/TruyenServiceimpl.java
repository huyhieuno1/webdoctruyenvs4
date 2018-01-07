package group1.service;

import java.util.LinkedList;
import java.util.List;

import javax.transaction.Transaction;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;

import group1.model.Truyen;
import group1.util.HibernateUtil;

public class TruyenServiceimpl implements ITruyenService{
	Session session = null;
	
	@Override
	public List<Truyen> getListTr() {
		session = HibernateUtil.getSessionFactory().openSession();
		  List<Truyen> listTr = new LinkedList<Truyen>();
	      try { 
	         Query query = session.createQuery("FROM  Truyen");
	         listTr = query.list();
	      } catch (HibernateException e) {
	         e.printStackTrace(); 
	      } finally {
	    	  if(session!=null){
					session.close();
				}
	      }
	      return listTr;
	}
	@Override
	public List<Truyen> getListTr_TL(int id_TL) {
		 session = HibernateUtil.getSessionFactory().openSession();
		  List<Truyen> listTr = new LinkedList<Truyen>();
	      try {
	         Query query = session.createQuery("FROM  Truyen  WHERE theloai.id = :id");
	         query.setParameter("id", id_TL);
	         listTr = query.list();
	      } catch (HibernateException e) {
	         e.printStackTrace(); 
	      } finally {
	    	  if(session!=null){
					session.close();
				}
	      }
	      return listTr;
	}


	@Override
	public Truyen findTr(String name) {
		return null;
	}

	@Override
	public void saveTr(Truyen truyen) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		try {
			session.beginTransaction();
			session.save(truyen);
			session.getTransaction().commit();
		} catch (HibernateException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		finally {
			if(session!=null){
				session.close();
			}
		}
	}

	@Override
	public void updateTr(int id_Tr) {
		session = HibernateUtil.getSessionFactory().openSession();
	      try {
	         session.beginTransaction();
	         Truyen truyen = (Truyen)session.get(Truyen.class, id_Tr); 
			 session.update(truyen); 
			 session.beginTransaction().commit();
	      } catch (HibernateException e) {
	        
	         e.printStackTrace(); 
	      } finally {
	    	  if(session!=null){
					session.close();
				}
	      }
		
	}


	@Override
	public List<Truyen> getListTr_TG(int id_TG) {
		  session = HibernateUtil.getSessionFactory().openSession();
		  List<Truyen> listTr = new LinkedList<Truyen>();
	      try {
	         session.beginTransaction();
	         Query query = session.createQuery("FROM  Truyen WHERE idTacGia =: id");
	         query.setParameter("id", id_TG);
	         listTr = query.list();
	         session.beginTransaction().commit();
	      } catch (HibernateException e) {
	         e.printStackTrace(); 
	      } finally {
	    	  if(session!=null){
					session.close();
				}
	      }
	      return getListTr();
	}


	@Override
	public void deleteTr(int id_Tr) {
		 session = HibernateUtil.getSessionFactory().openSession(); 
	     try {
	    	 session.beginTransaction();
	         Truyen truyen = (Truyen)session.get(Truyen.class, id_Tr); 
	         session.delete(truyen); 
	         session.beginTransaction().commit();
			} catch (HibernateException e) {
				// TODO: handle exception
				e.printStackTrace();
			}
			finally {
				if(session!=null){
					session.close();
				}
			}
	   }
	@Override
	public Truyen preview(int id_Tr) {
		session = HibernateUtil.getSessionFactory().openSession();
		 String sql = " FROM Truyen WHERE id=:id";
        Query query = session.createQuery(sql);
        query.setParameter("id", id_Tr);
        Truyen truyen = (Truyen) query.uniqueResult();
        session.close();
        return truyen;
		
	}
}
