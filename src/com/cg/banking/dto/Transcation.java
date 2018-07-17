package com.cg.banking.dto;

import java.io.Serializable;


import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="transaction")
public class Transcation implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Column(name="accountid")
	private int accountNumber;
	//@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="SEQUENCE2")
	//@SequenceGenerator(name="SEQUENCE2", sequenceName="tran_seq",allocationSize=10)
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="transactionid")
	private int transactionId;
	
	
	
	@Column(name="transaction_description")
	private String transactionDescription;
	
	@Column(name="dateoftransfer")
	private Date DateOfTransaction;
	
	@Column(name="transferamount")
	private int transactionamount;

	


	

	public Date getDateOfTransaction() {
		return DateOfTransaction;
	}

	public void setDateOfTransaction(Date dateOfTransaction) {
		DateOfTransaction = dateOfTransaction;
	}

	public int getTransactionId() {
		return transactionId;
	}

	public void setTransactionId(int transactionId) {
		this.transactionId = transactionId;
	}

	public int getAccountNumber() {
		return accountNumber;
	}

	public void setAccountNumber(int accountNumber) {
		this.accountNumber = accountNumber;
	}

	public int getTransactionamount() {
		return transactionamount;
	}

	public void setTransactionamount(int transactionamount) {
		this.transactionamount = transactionamount;
	}

	public String getTransactionDescription() {
		return transactionDescription;
	}

	public void setTransactionDescription(String transactionDescription) {
		this.transactionDescription = transactionDescription;
	}


	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	
	public Transcation(){
		
	}

	public Transcation(int transactionId, int accountNumber,
			String transactionDescription, Date dateOfTransaction,
			int transactionamount) {
		super();
		this.transactionId = transactionId;
		this.accountNumber = accountNumber;
		this.transactionDescription = transactionDescription;
		this.DateOfTransaction = dateOfTransaction;
		this.transactionamount = transactionamount;
	}

	@Override
	public String toString() {
		return "OnlineBean [transactionId=" + transactionId
				+ ", accountNumber=" + accountNumber
				+ ", transactionDescription=" + transactionDescription
				+ ", DateOfTransaction=" + DateOfTransaction
				+ ", transactionamount=" + transactionamount + "]";
	}


	
	
}
