package homeloan.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import homeloan.model.Applicants;
import homeloan.model.Users;
import homeloan.service.HomeLoanServiceIntf;

@Controller("homeLoanController")
public class HomeLoanController {

	@Autowired
	public HomeLoanServiceIntf homeLoanServiceIntf;
	
	/*
	 * Method to access the registration page (i.e. rendering on the browser)
	 */
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	  public ModelAndView getRegisterUserPage(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView("registration");
        mav.addObject("user", new Users());
        return mav;		
	}
	
	/*
	 * Method to be executed after registration form submission
	 */
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	 public ModelAndView registerUser(HttpServletRequest request, HttpServletResponse response, @ModelAttribute("user") Users users) {
			
		//System.out.println(users.getFirstname());
		long id =new Date().getTime();
		boolean flag = homeLoanServiceIntf.registerUser(users);
		if(flag) {
		    ModelAndView mav = new ModelAndView("applicationform");
		    mav.addObject("login", new Users());
		    return mav;
		    }
		    else {
		    	ModelAndView mav = new ModelAndView("UserRegister");
		        mav.addObject("user", new Users());
		        //mav.addObject("status","Sorry! Registration in incomplete");
		        return mav;	
		    }
	  }
	
	/*
	 * Method to access the login page (i.e. rendering on the browser)
	 */
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	  public ModelAndView getLoginPage(HttpServletRequest request, HttpServletResponse response, @ModelAttribute("user") Users users) {
		ModelAndView mav = new ModelAndView("login");
        mav.addObject("user", new Users());
      return mav;		
	}
	
	 @RequestMapping(value = "/login", method = RequestMethod.POST)
	  public ModelAndView loginProcess(HttpServletRequest request, HttpServletResponse response,   @ModelAttribute Users user1) {
		 
	    ModelAndView mav = null;
	    boolean flag=homeLoanServiceIntf.loginProcess(user1);
	    System.out.println(flag);
	    if (flag)
	      mav = new ModelAndView("applicationform");
	  else {
	      mav = new ModelAndView("login");
	      mav.addObject("message", " Password is wrong!!");
	    }
	    return mav;
	  }
	
	/*
	 * Method to access the application form page (i.e. rendering on the browser)
	 */
	@RequestMapping(value = "/application", method = RequestMethod.GET)
	  public ModelAndView getApplicationFormPage(HttpSession session, @ModelAttribute("applicants") Applicants applicants) {
		session.setAttribute("userid", 47);
		
		ModelAndView mav = new ModelAndView("applicationform");
      mav.addObject("applicants", new Applicants());
      return mav;		
	}
	
	
	/*
	 * Method to be executed after Personal Details form submission
	 */
	@RequestMapping(value = "/application", method = RequestMethod.POST)
	 public ModelAndView addApplicationInfo(HttpServletRequest request, HttpServletResponse response, HttpSession session) throws ParseException {
		Integer userid=(Integer)session.getAttribute("userid");
		
		System.out.println("Controller for application form called");
		String phone = request.getParameter("phone");
		String dob = request.getParameter("dob");
		String gender = request.getParameter("gender");
		String nationality = request.getParameter("nationality");
		String aadharno = request.getParameter("aadharno");
		String panno = request.getParameter("panno");
		//System.out.println(phone+"\t"+dob);
		Applicants applicants = new Applicants();
		applicants.setPhone(phone);
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date date = sdf.parse(dob);
		Calendar cal = Calendar.getInstance();
		cal.setTime(date);
 			
 		
		applicants.setDob(cal);
		applicants.setGender(gender);
		applicants.setNationality(nationality);
		applicants.setAadharno(aadharno);
		applicants.setPanno(panno);
		Users user = new Users();
		user.setUserid(userid);
		applicants.setUsers(user);
		
		boolean flag = homeLoanServiceIntf.addApplicationInfo(applicants);
		if(flag) {
		    ModelAndView mav = new ModelAndView("login");
		    mav.addObject("login", new Users());
		    return mav;
		    }
		    else {
		    	ModelAndView mav = new ModelAndView("applicationform");
		        mav.addObject("user", new Users());
		        //mav.addObject("status","Sorry! Registration in incomplete");
		        return mav;	
		    }
	  }
	
	@RequestMapping(value = "/calculator", method = RequestMethod.GET)
	  public ModelAndView getLoginPage(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView("calculator");
     // mav.addObject("user", new Users());
    return mav;		
	}
}
