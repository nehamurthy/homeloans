package homeloan.dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.springframework.stereotype.Repository;

import homeloan.model.Applicants;
import homeloan.model.Users;

@Repository("homeLoanDao")
public class HomeLoanDaoImpl implements HomeLoanDaoIntf {

	public boolean registerUser(Users users) {
		
		 boolean flag=false;
		    try {
			    EntityManagerFactory emf = Persistence.createEntityManagerFactory("pu");
				EntityManager em = emf.createEntityManager();
				em.getTransaction().begin(); 
				em.persist(users);
				
				em.getTransaction().commit();
				em.close();
				System.out.println("end");
				flag=true;
		    }
		    catch(Exception e) { 
		    	System.out.println("Error:"+e);
		    }
		    return flag;
	}
	
	public boolean addApplicationInfo(Applicants applicants) {
		
		boolean flag=false;
	    try {
		    EntityManagerFactory emf = Persistence.createEntityManagerFactory("pu");
			EntityManager em = emf.createEntityManager();
			em.getTransaction().begin(); 
			em.persist(applicants);
			em.getTransaction().commit();
			em.close();
			System.out.println("Done");
			flag=true;
	    }
	    catch(Exception e) { 
	    	System.out.println("Error:"+e);
	    }
	    return flag;
	}

	public boolean loginProcess(Users users) {
		
		boolean result=false;
		try{
		
		//code for jpa
			EntityManagerFactory emf = Persistence.createEntityManagerFactory("pu");
			EntityManager em = emf.createEntityManager();
		
		Users u=em.find(Users.class,users.getUserid());
		//System.out.println(result+"1");
	
		
		if(u!=null)
		{
			if(u.getPassword().equals(users.getPassword()))
				{
				result=true;
			    
				}
		}
		
		em.close();
	}
		catch(Exception e)
		{
			System.out.println("error:"+e);
		}
		//System.out.println(result+"4");
		return result;
	}

	
}
