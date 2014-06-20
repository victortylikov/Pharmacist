package com.victortylikov.spring.dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.victortylikov.spring.domain.Client;

@Repository
public class ClientDaoImpl implements ClientDao {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void addClient(Client client) {
		sessionFactory.getCurrentSession().save(client);

	}

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

}
