package com.ckp.model.dao;

import com.ckp.model.dao.jpa.JpaDaoFactory;


public abstract class DaoFactory {
	private static DaoFactory daoFactory;
	public static DaoFactory getInstance()
	{
		if(daoFactory == null) daoFactory = new JpaDaoFactory();
		return daoFactory;
	}
	public abstract AccountDAO getAccountDAO()
	{
		
	}
}
