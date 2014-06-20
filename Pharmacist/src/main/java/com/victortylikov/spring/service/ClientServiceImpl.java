package com.victortylikov.spring.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.victortylikov.spring.dao.ClientDao;
import com.victortylikov.spring.domain.Client;

@Service
public class ClientServiceImpl implements ClientService {

	@Autowired
	private ClientDao clientDao;

	@Override
	@Transactional
	public void addClient(Client client) {
		clientDao.addClient(client);
	}

	public ClientDao getClientDao() {
		return clientDao;
	}

	public void setClientDao(ClientDao clientDao) {
		this.clientDao = clientDao;
	}

}
