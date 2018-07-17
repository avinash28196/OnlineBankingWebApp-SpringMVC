package com.cg.banking.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.cg.banking.dto.Admin;
import com.cg.banking.dto.Transcation;
import com.cg.banking.service.IBankingService;

@Controller
public class BankingController {
	
	
	@Autowired
	private IBankingService service;

	
	
	public IBankingService getService() {
		return service;
	}
	public void setService(IBankingService service) {
		this.service = service;
	}
	
	
	
	@RequestMapping("/index")
	public String index()
	{
		return "index";
	}
	/*@RequestMapping("/login")
	public String start()
	{
		
		
		return "pages/adminLogin";
	}*/
	
	@RequestMapping("/login")
	public String start()
	{
		
		
		return "pages/bootAdmin";
	}
	
	/*@RequestMapping("/checkLogin")
	public String check(@RequestParam("adminId") String adminId,@RequestParam("password") String password, HttpServletRequest request)
	{
		
		
		if(service.checkL(adminId,password))
		{
		
			return "pages/home";
		
		}
		else
		{
			HttpSession session=request.getSession();
			session.setAttribute("error", "Invalid UserId or Password");
			return "pages/adminLogin";
		}
		
		
	}*/
	@RequestMapping("/checkLogin")
	public String check(@RequestParam("adminId") String adminId,@RequestParam("password") String password, HttpServletRequest request)
	{
		
		
		if(service.checkL(adminId,password))
		{
		
			return "pages/home";
		
		}
		else
		{
			HttpSession session=request.getSession();
			session.setAttribute("error", "Invalid UserId or Password");
			return "pages/bootAdmin";
		}
		
		
	}
	
	@RequestMapping("/logout")
	public String out()
	{
		
		return "pages/bootAdmin";
	}
	
	
	@RequestMapping("/createAccount")
	public String goToStart(Model model){
		model.addAttribute("bean",new Admin());
		return "pages/customerRegForm";
	}

	@RequestMapping("/reg")
	public ModelAndView registration(@ModelAttribute("bean") @Valid Admin admin,BindingResult result){
		if(result.hasErrors())
		{
			 
			 return new ModelAndView("pages/customerRegForm");
		}
		service.addDetails(admin);
		return new ModelAndView("pages/customerSuccess","k",admin);
		
	}
	/*@RequestMapping("/viewStatement")
	public String transcation()
	{
		return "pages/Transcation";
	}
	
	@RequestMapping("/daily")
	public ModelAndView viewDailyTransactions()
	{
		
		ArrayList<Transcation> list=new ArrayList <Transcation>();
		list = service.retrieveDaily();
		return new ModelAndView("pages/Transcation","DailyTransactionsList",list);		
	}
	
	@RequestMapping("/monthly")
	public ModelAndView viewMonthlyTransactions()
	{
		
		ArrayList<Transcation> list=new ArrayList <Transcation>();
		list = service.retrieveMonthly();
		return new ModelAndView("pages/Transcation","MonthlyTransactionsList",list);		
	}
	
	@RequestMapping("/quarterly")
	public ModelAndView viewQuarterlyTransactions()
	{
		
		ArrayList<Transcation> list=new ArrayList <Transcation>();
		list = service.retrieveQuarterly();
		return new ModelAndView("pages/Transcation","QuarterlyTransactionsList",list);		
	}
	
	@RequestMapping("/yearly")
	public ModelAndView viewYearlyTransactions()
	{
		
		ArrayList<Transcation> list=new ArrayList <Transcation>();
		list = service.retrieveYearly();
		return new ModelAndView("pages/Transcation","YearlyTransactionsList",list);		
	}*/
	
	@RequestMapping("/viewStatement")
	public String transcation()
	{
		return "pages/bootTrans";
	}
	
	@RequestMapping("/daily")
	public ModelAndView viewDailyTransactions()
	{
		
		ArrayList<Transcation> list=new ArrayList <Transcation>();
		list = service.retrieveDaily();
		return new ModelAndView("pages/bootTrans","DailyTransactionsList",list);		
	}
	
	@RequestMapping("/monthly")
	public ModelAndView viewMonthlyTransactions()
	{
		
		ArrayList<Transcation> list=new ArrayList <Transcation>();
		list = service.retrieveMonthly();
		return new ModelAndView("pages/bootTrans","MonthlyTransactionsList",list);		
	}
	
	@RequestMapping("/quarterly")
	public ModelAndView viewQuarterlyTransactions()
	{
		
		ArrayList<Transcation> list=new ArrayList <Transcation>();
		list = service.retrieveQuarterly();
		return new ModelAndView("pages/bootTrans","QuarterlyTransactionsList",list);		
	}
	
	@RequestMapping("/yearly")
	public ModelAndView viewYearlyTransactions()
	{
		
		ArrayList<Transcation> list=new ArrayList <Transcation>();
		list = service.retrieveYearly();
		return new ModelAndView("pages/bootTrans","YearlyTransactionsList",list);		
	}

}
