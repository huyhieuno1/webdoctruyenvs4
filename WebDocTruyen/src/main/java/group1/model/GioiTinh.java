package group1.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="GIOITINH")
public class GioiTinh {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id_GT;
	@Column(columnDefinition=("NVARCHAR(100)"))
	private String name_GT;
	public int getId_GT() {
		return id_GT;
	}
	public void setId_GT(int id_GT) {
		this.id_GT = id_GT;
	}
	public String getName_GT() {
		return name_GT;
	}
	public void setName_GT(String name_GT) {
		this.name_GT = name_GT;
	}
	public GioiTinh(int id_GT, String name_GT) {
		super();
		this.id_GT = id_GT;
		this.name_GT = name_GT;
	}
	public GioiTinh() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	
}
