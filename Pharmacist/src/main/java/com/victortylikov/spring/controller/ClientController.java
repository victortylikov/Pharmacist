package com.victortylikov.spring.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.victortylikov.spring.domain.Client;
import com.victortylikov.spring.service.ClientService;



@Controller
public class ClientController {

	@Autowired
	private ClientService clientService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index(ModelMap model) {
		return "../index";
	}
	
	@RequestMapping(value = "/addNewClient", method = RequestMethod.GET)
	public String addClientGet(ModelMap map) {
		map.addAttribute("client", new Client());
		return "/addClient";
	}

	@RequestMapping(value = "/addClientPost", method = RequestMethod.POST)
	public String addClient(@ModelAttribute(value = "client") Client client,
			BindingResult result) {
		if (result.hasErrors()) {
			return "/addClient";
		}
		clientService.addClient(client);
		return "../index";
	}

	public ClientService getClientService() {
		return clientService;
	}

	public void setClientService(ClientService clientService) {
		this.clientService = clientService;
	}
}
