package com.mvnfshop;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
@Controller
public class HomeController {
@RequestMapping("/")
public ModelAndView view(){
	ModelAndView view=new ModelAndView("home");
	return view;

}
@RequestMapping("/home")
public ModelAndView view1(){
	ModelAndView view=new ModelAndView("home");
	return view;

}
@RequestMapping("/about")
public ModelAndView view2(){
	 ModelAndView view= new ModelAndView("about");
	 return view;
	 
}

@RequestMapping("/Sign_in")
public ModelAndView view3(){
	 ModelAndView view= new ModelAndView("Sign_in");
	 return view;
	 
}

@RequestMapping("/Sign_up")
public ModelAndView view4(){
	 ModelAndView view= new ModelAndView("Sign_up");
	 return view;
	 
}

@RequestMapping("/Contact")
public ModelAndView view5(){
	 ModelAndView view= new ModelAndView("Contact");
	 return view;
	 
}

}