package com.smhrd.web;

import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
/*import org.springframework.web.bind.annotation.RequestBody;*/
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.smhrd.domain.InfoDTO;
import com.smhrd.domain.SongDTO;
import com.smhrd.mapper.EmotionsMapper;

// @RestController를 붙이면 @ResponseBody 안붙여도 됨
@Controller
public class EmotionsRestController {

	// Ajax요청을 처리할 컨트롤러 ==> RestController

	@Autowired
	private EmotionsMapper mapper;

	@RequestMapping("/goJoin.do")
	public String goJoin() {
		return "Join";
	}
	
	@RequestMapping("/Rerutn.do")
	public String Rerutn() {
		return "Login";
	}
	@RequestMapping("/join.do")
	public String join(InfoDTO info) {
		
		System.out.println(info.getId());
		System.out.println(info.getNick());

		int cnt = mapper.join(info);
		// 4. 다음 view 리턴
		if (cnt > 0) {
			return "Login";

		} else {
			return "Join";
		}

	}

	@RequestMapping("/login.do")
	public String login(InfoDTO info, HttpSession session) {

		InfoDTO user_info = mapper.login(info);


		if (user_info != null) {
			session.setAttribute("user_info", user_info);
			return "Main";

		}else{
			return "Login";
		}
	}

	@RequestMapping("/logout.do")
	public String logout(HttpSession session, HttpServletResponse response) throws Exception {

		session.removeAttribute("user_info");

		return "Login"; // redirect://
	}

	@GetMapping("/updatepage.do")
	public String updatepage(String id, Model model) {
		
		System.out.println("김치짱");

		InfoDTO result = mapper.select(id);

		model.addAttribute("result", result);
		
		

		return "Update";
	}

	@RequestMapping("/update.do")
	public String update(InfoDTO info) {
		System.out.println("안도착");

		System.out.println(info);

		mapper.update(info);

		return "Login";
	}

	@RequestMapping("/delete.do")
	public String delete(HttpSession session) {
		
		InfoDTO user_info = (InfoDTO)session.getAttribute("user_info");
			
		mapper.delete(user_info);
		session.removeAttribute("info");
		
		return "Login";
	}
	
	
	
	// AJAX
	@RequestMapping("/square")
	public @ResponseBody String test(int num) {
		System.out.println("확인");
		int result = num * num;
		return "15";
	}
	
	@RequestMapping("/songinsert")
	public @ResponseBody String songinsert() {
		System.out.println("확인");
		
		mapper.songinsert();
		
		return "15";
	}
	
	@RequestMapping("/songList.do")
	public @ResponseBody List<SongDTO> songList(){
		
			List<SongDTO> list = mapper.songList();
			
			System.out.println(list);
			return list;
	}
	
	
	
	
	
}