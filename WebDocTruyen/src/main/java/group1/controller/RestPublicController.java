package group1.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import group1.model.Account;
import group1.model.TheLoai;
import group1.model.Truyen;
import group1.service.AccountServiceimpl;
import group1.service.TheLoaiServiceimpl;
import group1.service.TruyenServiceimpl;
import group1.util.Stringmd5;


@RestController
public class RestPublicController {

	@Autowired
	TheLoaiServiceimpl theLoaiServiceimpl;
	@Autowired
	TruyenServiceimpl truyenServiceimpl;
	@Autowired
	AccountServiceimpl accountServiceimpl;
	
	@RequestMapping(value = "/header/", method = RequestMethod.GET)
	public ResponseEntity<List<TheLoai>> listTL(){
		List<TheLoai> listTL = theLoaiServiceimpl.getList();
		System.out.println(listTL.size());
		 if(listTL.isEmpty()){
	            return new ResponseEntity<List<TheLoai>>(HttpStatus.NO_CONTENT);
	        }
	        return new ResponseEntity<List<TheLoai>>(listTL, HttpStatus.OK);
	}

	@RequestMapping(value = "/listTr_TL/{id}", method = RequestMethod.GET)
	public ResponseEntity<List<Truyen>> listTr_Ca(@PathVariable("id") int id_TL ,HttpSession session){
		List<Truyen> listTr_Ca = truyenServiceimpl.getListTr_TL(id_TL);
		session.setAttribute("listTR_TL", listTr_Ca);
		System.out.println("id = " +id_TL);
		System.out.println("size list = " +listTr_Ca.size());
		 if(listTr_Ca.isEmpty()){
	            return new ResponseEntity<List<Truyen>>(HttpStatus.NO_CONTENT);
	        }
	        return new ResponseEntity<List<Truyen>>(listTr_Ca, HttpStatus.OK);
	}
	
	@RequestMapping(value = "/listTr/", method = RequestMethod.GET)
	public ResponseEntity<List<Truyen>> listTr(){
		List<Truyen> listTr = truyenServiceimpl.getListTr(); 
		System.out.println(listTr.size());
		 if(listTr.isEmpty()){
	            return new ResponseEntity<List<Truyen>>(HttpStatus.NO_CONTENT);
	        }
	        return new ResponseEntity<List<Truyen>>(listTr, HttpStatus.OK);
	}
	
	@RequestMapping(value = "/login/" , method = RequestMethod.POST)
	public ResponseEntity<?> login(HttpSession session, @RequestBody Account account){
		int id = accountServiceimpl.login(account.getUserName(), account.getPassWord());
		System.out.println(account.getUserName() + " | " + account.getPassWord() + " | " +id);
		Account account2 = null;
		if(id != 0){
			account2 = accountServiceimpl.getInforAccount(id);
			session.setAttribute("name", account2.getFullName());
			session.setAttribute("idUser", account2.getId());
			return new ResponseEntity<Integer>(id,HttpStatus.OK);
		}
		return new ResponseEntity<Integer>(id, HttpStatus.NO_CONTENT);
	}
	
	@RequestMapping(value = "/register/" , method = RequestMethod.POST)
	public ResponseEntity<Void> register(HttpSession session, @RequestBody Account account){
		accountServiceimpl.register(account);
		session.setAttribute("message", "Thành Công!");
		return new ResponseEntity<Void>(HttpStatus.NO_CONTENT);
	}
}
