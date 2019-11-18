package homeloan.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;


@Entity
@Table(name="applicants")
public class Applicants {

	@Id
	private int userid;
	@Column(length=10)
	private String phone;
	@Temporal(TemporalType.DATE)
	private Date dob;
	@Column(length=15)
	private String gender;
	@Column(length=15)
	private String nationality;
	@Column(length=12)
	private String aadharno;
	@Column(length=10)
	private String panno;
	
	//A no-arg constructor
	public Applicants() {
		super();
	}

	public int getUserid() {
		return userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public Date getDob() {
		return dob;
	}

	public void setDob(Date dob) {
		this.dob = dob;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getNationality() {
		return nationality;
	}

	public void setNationality(String nationality) {
		this.nationality = nationality;
	}

	public String getAadharno() {
		return aadharno;
	}

	public void setAadharno(String aadharno) {
		this.aadharno = aadharno;
	}

	public String getPanno() {
		return panno;
	}

	public void setPanno(String panno) {
		this.panno = panno;
	}
	
}
