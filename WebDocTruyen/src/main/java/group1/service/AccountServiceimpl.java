package group1.service;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;

import group1.model.Account;
import group1.util.HibernateUtil;

public class AccountServiceimpl implements IAccountService{
	Session session = null;
	
	
	@Override
	public void save(Account dg) {
		
	}

	@Override
	public void update(Account dg) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(Account dg) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public int login(String user, String pass) {
		session = HibernateUtil.getSessionFactory().openSession();
		try {
			Query query = session.createQuery("From Account  Where username =:user and password =:pass");
			query.setParameter("user", user);
			query.setParameter("pass", pass);
			Account account = (Account)query.uniqueResult();
			if(account != null){
				return account.getId();
			}
		} catch (HibernateException e) {
			// TODO: handle exception
		}
		finally {
			if(session != null){
				session.clear();
			}
		}
		return 0;
	}

	@Override
	public Account getInforAccount(int id) {
		session = HibernateUtil.getSessionFactory().openSession();
		Account account = new Account();
		try {
			session.beginTransaction();
			account = (Account) session.get(Account.class, new Integer(id));
		} catch (HibernateException e) {
			// TODO: handle exception
		}
		finally {
			if(session != null){
				session.clear();
			}
		}
		return account;
	}

	@Override
	public List getListAccount() {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public void register(Account account) {
		session = HibernateUtil.getSessionFactory().openSession();
		try {
			session.beginTransaction();
			session.save(account);
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

	
}
