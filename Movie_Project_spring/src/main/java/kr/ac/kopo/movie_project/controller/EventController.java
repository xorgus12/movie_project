package kr.ac.kopo.movie_project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/event")
public class EventController {
	final String path = "event/";
	@GetMapping("/continue_Event")
	public String continue_Event(){
		return path+"continue_Event";
	}
	
	@GetMapping("/end_Event")
	public String end_Event() {
		return path+"end_Event";
	}
	
	@GetMapping("/EventInfo")
	public String EventInfo() {
		return path+"EventInfo";
	}
}
