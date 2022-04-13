package kr.ac.kopo.movie_project.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.ac.kopo.movie_project.model.Member;
import kr.ac.kopo.movie_project.service.MemberService;

@Controller
public class RootController {
	final String path="login/";
	
	@Autowired
	MemberService memberservice;
	
	@RequestMapping("/")
	public String index() {
		return "index";
	}
	@GetMapping("/login")
	public String login() {
		return path+"login"; 
	}
	@PostMapping("/login")
	public String login(Member member,HttpSession session) {
		System.out.println(member.getPasswd());
		System.out.println(member.getId()+"<--아이디 위 패스워드");
		if(memberservice.login(member)) {
			session.setAttribute("member", member);
			System.out.println(member.getPasswd());
			System.out.println(member.getId()+"<--아이디 위 패스워드");
			return "redirect:.";
		}
		System.out.println(member.getPasswd());
		System.out.println(member.getId()+"<--[실패]아이디 위 패스워드");
		return "redirect:.";
	}
	@GetMapping("/signup")
	public String signup() {
		return path+"signup";
	}

	@PostMapping("/signup")
	public String signup(Member member,RedirectAttributes ra) {
		memberservice.add(member);
		ra.addFlashAttribute("msg", "회원가입이 완료 되었습니다");
		return "redirect:.";
	}
	@ResponseBody
	@GetMapping("/checkId")
	public String checkId(String id) {

		if(memberservice.checkId(id))
			return "OK";
		else return "FAIL";
	}

	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:.";
	}
}

