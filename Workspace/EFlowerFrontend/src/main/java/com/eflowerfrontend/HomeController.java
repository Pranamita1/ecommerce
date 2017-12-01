package com.eflowerfrontend;

import java.security.Principal;
import java.util.List;

import javax.enterprise.inject.Model;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.junit.runner.Request;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.eflower.EFlower.Dao.ProductDao;
import com.eflower.EFlower.Dao.UserDao;
import com.eflower.EFlower.Model.Product;
import com.eflower.EFlower.Model.User;

@Controller
public class HomeController {
	@Autowired
	UserDao Dao;
	@Autowired
	ProductDao productDao;
	@Autowired
	User user;
	@Autowired
	HttpServletRequest request;

	@RequestMapping("/")
	public ModelAndView view() {
		ModelAndView view = new ModelAndView("Home");
		Principal principal= request.getUserPrincipal();
	      if(principal!=null){
	    	  view.addObject("name", principal.getName());
	      }
		return view;
	}

	@RequestMapping("/Home")
	public ModelAndView view1() {
		ModelAndView view = new ModelAndView("Home");
		Principal principal= request.getUserPrincipal();
	      if(principal!=null){
	    	  view.addObject("name", principal.getName());
	      }
		return view;
	}

	@RequestMapping("/About")
	public ModelAndView view2() {
		ModelAndView view = new ModelAndView("About");
		Principal principal= request.getUserPrincipal();
	      if(principal!=null){
	    	  view.addObject("name", principal.getName());
	      }
		return view;
	}

	@RequestMapping("/Contact")
	public ModelAndView view3() {
		ModelAndView view = new ModelAndView("Contact");
		Principal principal= request.getUserPrincipal();
	      if(principal!=null){
	    	  view.addObject("name", principal.getName());
	      }
		return view;
	}

	@RequestMapping("/Sign_up")
	public ModelAndView view4() {
		ModelAndView view = new ModelAndView("Sign_up");
		view.addObject("RegistrationForm", user);
		return view;
	}

	@RequestMapping(value="/login", method= RequestMethod.GET)
	public ModelAndView view5(@RequestParam(value="error", required=false) String error ) {
		ModelAndView view = new ModelAndView();	
		if(error!= null){
			view.addObject("error", "invalid");
		}
		view.setViewName("Sign_in");
		return view; 
	}

	 

	@RequestMapping("/Product")
	public ModelAndView view7() {
     
		ModelAndView view = new ModelAndView("Product");
		 Principal principal= request.getUserPrincipal();
	      if(principal!=null){
	    	  view.addObject("name", principal.getName());
	      }
		List<Product> list = productDao.getAll();
		view.addObject("prdList", list);
		return view;
	}

	
	



	@RequestMapping(value = "/addUser", method = RequestMethod.POST)
	public ModelAndView register(@Valid @ModelAttribute("RegistrationForm") User user, BindingResult result) {
        if(result.hasErrors()){
        	//ModelAndView model= new ModelAndView("Sign_up");
        	return new ModelAndView("Sign_up");
        }
        user.setRole("User");	
        Dao.insertUser(user); 
			ModelAndView model = new ModelAndView("Sign_in");
	
			model.addObject("loginUser", "You have sucessfully registerd");
			
		
        
        return model;
	
	}
	
}
