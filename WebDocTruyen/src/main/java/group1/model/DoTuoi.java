package group1.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="DOTUOI")
public class DoTuoi {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id_DT;
	@Column(columnDefinition=("NVARCHAR(100)"))
	private String name_DT;
	public int getId_DT() {
		return id_DT;
	}
	public void setId_DT(int id_DT) {
		this.id_DT = id_DT;
	}
	public String getName_DT() {
		return name_DT;
	}
	public void setName_DT(String name_DT) {
		this.name_DT = name_DT;
	}
	public DoTuoi(int id_DT, String name_DT) {
		super();
		this.id_DT = id_DT;
		this.name_DT = name_DT;
	}
	public DoTuoi() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
