package group1.service;

import java.util.List;

import group1.model.Account;

public interface IAccountService {

	int login(String user, String pass);
	void register(Account account);
	Account getInforAccount(int id);
	List getListAccount();
	void save(Account dg);
	void update(Account dg);
	void delete(Account dg);
}
