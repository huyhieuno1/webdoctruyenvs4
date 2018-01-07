package group1.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="ACCOUNT")
public class Account {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	@Column(columnDefinition=("NVARCHAR(100)"))
	private String userName;
	@Column(columnDefinition=("NVARCHAR(100)"))
	private String passWord;
	@Column(columnDefinition=("NVARCHAR(100)"))
	private String fullName;
	private int policy;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassWord() {
		return passWord;
	}
	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}
	public String getFullName() {
		return fullName;
	}
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
	public int getPolicy() {
		return policy;
	}
	public void setPolicy(int policy) {
		this.policy = policy;
	}
	public Account() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
}
