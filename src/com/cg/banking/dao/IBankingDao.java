package com.cg.banking.dao;

import java.util.ArrayList;

import com.cg.banking.dto.Admin;
import com.cg.banking.dto.Transcation;

public interface IBankingDao {
	
	void addDetails(Admin admin);

	ArrayList<Transcation> retrieveDaily();

	ArrayList<Transcation> retrieveMonthly();

	ArrayList<Transcation> retrieveQuarterly();

	ArrayList<Transcation> retrieveYearly();

}
