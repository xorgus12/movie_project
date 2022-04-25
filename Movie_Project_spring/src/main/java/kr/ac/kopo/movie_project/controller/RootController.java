package kr.ac.kopo.movie_project.controller;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fasterxml.jackson.databind.ObjectMapper;

import kr.ac.kopo.movie_project.model.Kofic;
import kr.ac.kopo.movie_project.model.Member;
import kr.ac.kopo.movie_project.service.MemberService;
import kr.or.kobis.kobisopenapi.consumer.rest.KobisOpenAPIRestService;
import kr.or.kobis.kobisopenapi.consumer.rest.exception.OpenAPIFault;

@Controller
public class RootController {
	final String path="login/";
	
	@Autowired
	MemberService memberservice;
	
	@RequestMapping("/")
	public String index(Member member, HttpSession session){
		if(session.getAttribute("member")==null) {
			member.setGrade(0);
			session.setAttribute("member",member);
			}

		return "index";
	}
	
	@GetMapping("/login")
	public String login() {
		return path+"login"; 
	}
	@PostMapping("/login")
	public String login(Member member,HttpSession session) {
		if(memberservice.login(member)) {
			session.setAttribute("member", member);
			String target=(String) session.getAttribute("target");
			return "redirect:"+(target==null?"/":target);
		}
		System.out.println("실패");
		return "redirect:login";
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
	@SuppressWarnings("unchecked")
	@ResponseBody
	@PostMapping("/koficmovie")
	public Object kobisMovie(@RequestBody Kofic item) throws OpenAPIFault, Exception {
		String key="52ed877329884c9bcff27fca7daf01d0";
		
		Calendar cal = Calendar.getInstance();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
		cal.add(Calendar.DATE, -1);
		String date = sdf.format(cal.getTime());
		
		
		String itemPerPage=item.getRank();
		
		KobisOpenAPIRestService service = new KobisOpenAPIRestService(key);
		String daliydata=service.getDailyBoxOffice(true,date,itemPerPage,"","","");

		ObjectMapper mapper = new ObjectMapper();
		HashMap<String,Object> data =mapper.readValue(daliydata,HashMap.class);
		System.out.println("데이터"+data);
		
		HashMap<String,Object> boxOfficeResult=(HashMap<String, Object>) data.get("boxOfficeResult");
		System.out.println("박스오피스"+boxOfficeResult);
		
		List<Kofic> dailyBoxOfficeList=(List<Kofic>) boxOfficeResult.get("dailyBoxOfficeList");
		System.out.println("데일리박스오피스"+dailyBoxOfficeList);
		
		int resultnum=Integer.parseInt(item.getRnum())-1;
		System.out.println("resultnum번째 영화정보"+dailyBoxOfficeList.get(resultnum));
		
		return dailyBoxOfficeList.get(resultnum);

	}
}

