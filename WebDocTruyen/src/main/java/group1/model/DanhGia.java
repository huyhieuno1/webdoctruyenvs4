package group1.model;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="DANHGIA")
public class DanhGia {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	@Column(columnDefinition=("NVARCHAR(100)"))
	private String deTail;
	private int rate;
	@ManyToOne(cascade = CascadeType.ALL)
	private Truyen truyen;
	@ManyToOne(cascade = CascadeType.ALL)
	private Account account;
	@Column(columnDefinition=("date"))
	private Date date;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getDeTail() {
		return deTail;
	}
	public void setDeTail(String deTail) {
		this.deTail = deTail;
	}
	public int getRate() {
		return rate;
	}
	public void setRate(int rate) {
		this.rate = rate;
	}

	public Truyen getTruyen() {
		return truyen;
	}
	public void setTruyen(Truyen truyen) {
		this.truyen = truyen;
	}
	public Account getAccount() {
		return account;
	}
	public void setAccount(Account account) {
		this.account = account;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public DanhGia() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	

}
