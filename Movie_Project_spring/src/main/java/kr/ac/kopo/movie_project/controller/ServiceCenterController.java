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
			
			return path+"F&Q";
		}
		
		@GetMapping("/NoticeView")
		public String noticeview() {
			
			return path+"NoticeView";
		}
		
		@GetMapping("/NoticeList")
		public String noticelist() {
			
			return path+"NoticeList";
		}
		
		@GetMapping("/NoticeAdd")
		public String noticeadd() {
			
			return path+"NoticeAdd";
		}
		
		@GetMapping("/NoticeUpdate")
		public String noticeupdate() {
			
			return path+"NoticeUpdate";
		}
	}


