package group1.model;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="CHAP")
public class Chap {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int ID_Chap;
	@ManyToOne(cascade = CascadeType.ALL)
	private Truyen truyen;
	@Column(columnDefinition=("text"))
	private String picture;
	private int number;
	public int getID_Chap() {
		return ID_Chap;
	}
	public void setID_Chap(int iD_Chap) {
		ID_Chap = iD_Chap;
	}
	public Truyen getTruyen() {
		return truyen;
	}
	public void setTruyen(Truyen truyen) {
		this.truyen = truyen;
	}
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	public Chap(int iD_Chap, Truyen truyen, String picture, int number) {
		super();
		ID_Chap = iD_Chap;
		this.truyen = truyen;
		this.picture = picture;
		this.number = number;
	}
	public Chap() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
}
