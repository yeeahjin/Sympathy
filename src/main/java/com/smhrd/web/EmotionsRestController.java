package com.smhrd.web;

import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
/*import org.springframework.web.bind.annotation.RequestBody;*/
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.smhrd.domain.InfoDTO;
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
	
	
	@RequestMapping("/first.do")
	public String first() {

		return "Login";
	}
//	@RequestMapping("/login.do")
//	public @ResponseBody String login(String data) {
//		// @ResponseBody --> return하는 내용을 그대로
//		
//		return "Login";
//
//	}
//	

	@RequestMapping("/join.do")
	public String join(InfoDTO info) {

		// 1. 파라미터 수집

		// 2. SQL쿼리 정의. mapper interface에 메서드 만들기

		// 3. 메서드 사용

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

		// 1. 파라미터 수집

		// 2. SQL쿼리 정의. mapper interface에 메서드 만들기

		// 3. mapper 메서드 사용
		InfoDTO info = mapper.login(info);
		
		System.out.println(info);
		
		// 4. 성공 실패 구분
		if (info != null) {
			// 성공 : session에 유저정보 저장, main으로
			session.setAttribute("info", info);
			return "Main";

		} else {

			// 실패 : index로

			return "Login";
		}

		// 성공 : session에 유저정보 저장, main으로
		// 실패 : index로

	}

//	@RequestMapping("/logout.do")
//	public String logout(HttpSession session) {
//		session.removeAttribute("board");
//		return "login";
//	}
//	
	@RequestMapping("/logout.do")
	public String logout(HttpSession session, HttpServletResponse response) throws Exception {
		
		session.removeAttribute("info");

		return "Login"; // redirect://
	}

	// 회원정보 수정탭

	@GetMapping("/updatepage.do")
	public String updatepage(String id, Model model) {
		
		InfoDTO result = mapper.select(id);
		
		model.addAttribute("board",result);
		
		return "Update";
	}
	
	@RequestMapping("/update.do")
	public String update(InfoDTO info) {
		
		
		System.out.println(info);

		mapper.update(info);
		
		return "Login";
	}
	
	@RequestMapping("/delete.do")
	public String delete(HttpSession session) {
		
		InfoDTO info = (info)session.getAttribute("info");
			
		mapper.delete(info);
		session.removeAttribute("info");
		
		return "Login";
	}

}