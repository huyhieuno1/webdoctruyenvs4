package group1.model;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;


@Entity
@Table(name="TRUYEN")
public class Truyen {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	@Column(columnDefinition=("NVARCHAR(100)"))
	private String name;
	private int year;
	@Column(columnDefinition=("text"))
	private String conTant;
	@Column(columnDefinition=("text"))
	private String deTail;
	@ManyToOne(cascade = CascadeType.ALL)
	private TacGia tacgia;
	@ManyToOne(cascade = CascadeType.ALL)
	private TheLoai theloai;
	@ManyToOne(cascade = CascadeType.ALL)
	private DoTuoi dotuoi;
	@ManyToOne(cascade = CascadeType.ALL)
	private GioiTinh gioitinh;
	private int views;
	@Column(columnDefinition=("text"))
	private String images;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getYear() {
		return year;
	}
	public void setYear(int year) {
		this.year = year;
	}
	public String getConTant() {
		return conTant;
	}
	public void setConTant(String conTant) {
		this.conTant = conTant;
	}
	public String getDeTail() {
		return deTail;
	}
	public void setDeTail(String deTail) {
		this.deTail = deTail;
	}
	public TacGia getTacgia() {
		return tacgia;
	}
	public void setTacgia(TacGia tacgia) {
		this.tacgia = tacgia;
	}
	public TheLoai getTheloai() {
		return theloai;
	}
	public void setTheloai(TheLoai theloai) {
		this.theloai = theloai;
	}
	public int getViews() {
		return views;
	}
	public void setViews(int views) {
		this.views = views;
	}
	
	public String getImages() {
		return images;
	}
	public void setImages(String images) {
		this.images = images;
	}
	public Truyen(int id, String name, int year, String conTant, String deTail, TacGia tacgia, TheLoai theloai,
			int views, String images) {
		super();
		this.id = id;
		this.name = name;
		this.year = year;
		this.conTant = conTant;
		this.deTail = deTail;
		this.tacgia = tacgia;
		this.theloai = theloai;
		this.views = views;
		this.images = images;
	}
	public Truyen() {
		super();
		// TODO Auto-generated constructor stub
	}

	
	

	
	
	
}
