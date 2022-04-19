package kr.ac.kopo.movie_project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/ticket")
public class TicketController {
	final String path = "ticket/";
	
	@RequestMapping("/Ticketing")
	public String Ticketing() {
		return path+"Ticketing";
	}
	@RequestMapping("/TicketInformation")
	public String TicketInformation() {
		return path+"TicketInformation";
	}
	@GetMapping("/sit")
	public String ticketsit() {
		return path+"TicketSit";
	}
	@GetMapping("/payment")
	public String pay() {
		return path+"Payment";
	}
	@GetMapping("/complete")
	public String com() {
		return path+"TicketComplete";
	}
}
