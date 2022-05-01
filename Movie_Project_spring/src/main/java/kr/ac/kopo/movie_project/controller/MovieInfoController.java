package kr.ac.kopo.movie_project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/movie_info")
public class MovieInfoController {
	final String path = "movie_info/";
	
	@GetMapping("/Expected")
	public String Expected() {
		
		return path+"Expected";
	}
	
	@GetMapping("/NowPlayRank")
	public String NowPlayRank() {
		return path+"NowPlayRank";
	}
	
	@GetMapping("/MovieRank")
	public String MovieRank() {
		return path+"MovieRank";
	}
}
