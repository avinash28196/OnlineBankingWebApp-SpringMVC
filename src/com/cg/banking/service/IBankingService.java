package com.cg.banking.service;

import java.util.ArrayList;

import com.cg.banking.dto.Admin;
import com.cg.banking.dto.Transcation;

public interface IBankingService {

	public boolean checkL(String adminId, String password);
	
	void addDetails(Admin admin);

	public ArrayList<Transcation> retrieveDaily();

	public ArrayList<Transcation> retrieveMonthly();

	public ArrayList<Transcation> retrieveQuarterly();

	public ArrayList<Transcation> retrieveYearly();

}
