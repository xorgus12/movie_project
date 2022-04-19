package kr.ac.kopo.movie_project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MypageController {
	final String path="myPage/";
	
	@RequestMapping("/myPage")
	public String mypage() {
		return path+"myPage";
	}
	@GetMapping("/mymovie")
	public String mymovie() {
		return path+"myMovie";
	}
	@GetMapping("/mygrade")
	public String mygrade() {
		return path+"myGrade";
	}
}
