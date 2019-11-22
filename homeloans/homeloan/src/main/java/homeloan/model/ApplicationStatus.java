package homeloan.model;

import java.util.Calendar;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name="applicationstatus")
public class ApplicationStatus {

	@Id   
	private String applicationid;
	@Temporal(TemporalType.DATE)
	private Calendar appointmentdate;
	private String status;
	public ApplicationStatus() {
		super();
	}
	public String getApplicationid() {
		return applicationid;
	}
	public void setApplicationid(String applicationid) {
		this.applicationid = applicationid;
	}
	public Calendar getAppointmentdate() {
		return appointmentdate;
	}
	public void setAppointmentdate(Calendar appointmentdate) {
		this.appointmentdate = appointmentdate;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
	
}
