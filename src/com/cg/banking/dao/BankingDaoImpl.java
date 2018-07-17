package com.cg.banking.dao;

import java.util.ArrayList;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import org.springframework.stereotype.Repository;

import com.cg.banking.dto.Admin;
import com.cg.banking.dto.Transcation;
@Repository
public class BankingDaoImpl implements IBankingDao{
	
	@PersistenceContext
	private EntityManager entityManager;
	
		
		@Override
		public void addDetails(Admin admin) {
			// TODO Auto-generated method stub
			entityManager.persist(admin);
			entityManager.flush();
		}


		@Override
		public ArrayList<Transcation> retrieveDaily() {
			TypedQuery<Transcation> query = entityManager.createQuery("SELECT a FROM Transcation a WHERE (trunc(sysdate)=trunc(DateOfTransaction))", Transcation.class);
			return (ArrayList<Transcation>) query.getResultList();
		}

		@Override
		public ArrayList<Transcation> retrieveMonthly() {
			TypedQuery<Transcation> query = entityManager.createQuery("SELECT a FROM Transcation a WHERE (trunc(sysdate)-trunc(DateOfTransaction)<=30)", Transcation.class);
			ArrayList<Transcation> monthList = (ArrayList<Transcation>) query.getResultList();
	
			return monthList; 
		}

		@Override
		public ArrayList<Transcation> retrieveQuarterly() {
			TypedQuery<Transcation> query = entityManager.createQuery("SELECT a FROM Transcation a WHERE (trunc(sysdate)-trunc(DateOfTransaction)<=92)", Transcation.class);
			return (ArrayList<Transcation>) query.getResultList();
		}

		@Override
		public ArrayList<Transcation> retrieveYearly() {
			TypedQuery<Transcation> query = entityManager.createQuery("SELECT a FROM Transcation a WHERE (trunc(sysdate)-trunc(DateOfTransaction)<=365)", Transcation.class);
			return (ArrayList<Transcation>) query.getResultList();
		}
}
