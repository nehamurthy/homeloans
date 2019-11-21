package homeloan.service;

import homeloan.model.Applicants;
import homeloan.model.Users;

public interface HomeLoanServiceIntf {

	public boolean registerUser(Users users);
	public boolean addApplicationInfo(Applicants applicants);
	public boolean loginProcess(Users users);
}
