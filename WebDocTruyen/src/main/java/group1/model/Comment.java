package group1.model;

import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name="COMMENT")
public class Comment {

	private String fullName;
	private String comment;
	private String date;
	public String getFullName() {
		return fullName;
	}
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public Comment(String fullName, String comment, String date) {
		super();
		this.fullName = fullName;
		this.comment = comment;
		this.date = date;
	}
	public Comment() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
}
