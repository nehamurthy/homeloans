package homeloan.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import homeloan.dao.HomeLoanDaoIntf;
import homeloan.model.Applicants;
import homeloan.model.Users;

@Service("homeLoanService")
public class HomeLoanServiceImpl implements HomeLoanServiceIntf {

	@Autowired
	public HomeLoanDaoIntf homeLoanDaoIntf;
	
	public boolean registerUser(Users users) {
		
		return homeLoanDaoIntf.registerUser(users);
	}
	
	public boolean addApplicationInfo(Applicants applicants) {
		
		return homeLoanDaoIntf.addApplicationInfo(applicants);
	}

	public boolean loginProcess(Users users) {

		return homeLoanDaoIntf.loginProcess(users);
	}
	
	
}
