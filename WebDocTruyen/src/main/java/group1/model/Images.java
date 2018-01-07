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
@Table(name="IMAGES")
public class Images {


	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id_IMG;
	@Column(columnDefinition=("NVARCHAR(200)"))
	private String name;
	@ManyToOne(cascade = CascadeType.ALL)
	private Chap chap;
	public int getId_IMG() {
		return id_IMG;
	}
	public void setId_IMG(int id_IMG) {
		this.id_IMG = id_IMG;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Chap getChap() {
		return chap;
	}
	public void setChap(Chap chap) {
		this.chap = chap;
	}
	public Images(int id_IMG, String name, Chap chap) {
		super();
		this.id_IMG = id_IMG;
		this.name = name;
		this.chap = chap;
	}
	public Images() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
