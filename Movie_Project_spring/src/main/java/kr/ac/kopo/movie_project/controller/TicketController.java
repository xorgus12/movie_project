package kr.ac.kopo.movie_project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/ticket")
public class TicketController {
	final String path = "ticket/";
	
	@GetMapping("/TicketInformation")
		public String TicketInformation() {
			return path+"TicketInformation";
		}
	
}
