package kr.ac.kopo.movie_project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/serviceCenter")
public class ServiceCenterController {
	final String path = "serviceCenter/";
		
		@GetMapping("/CenterService")
		public String CenterService() {
			
			return path+"CenterService";
		}

		@GetMapping("/F&Q")
		public String faq() {
			
			return "F&Q";
		}
		
		@GetMapping("/noticeview")
		public String noticeview() {
			
			return "noticeview";
		}
		
		@GetMapping("/noticeadd")
		public String noticeadd() {
			
			return "noticeadd";
		}
		
		@GetMapping("/noticeupdate")
		public String noticeupdate() {
			
			return "noticeupdate";
		}
	}


