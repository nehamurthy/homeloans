package homeloan.dao;

import homeloan.model.Applicants;
import homeloan.model.Users;

public interface HomeLoanDaoIntf {

	public boolean registerUser(Users users);
	public boolean addApplicationInfo(Applicants applicants);
	public boolean loginProcess(Users users);
}
