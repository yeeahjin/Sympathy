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
	
	@RequestMapping("/join.do")
	public String join(InfoDTO info) {
		
		System.out.println(info.getId());
		System.out.println(info.getNick());

//		int cnt = mapper.join(info);
//		// 4. 다음 view 리턴
//		if (cnt > 0) {
//			return "Login";
//
//		} else {
//			return "Join";
//		}
		return "Join";

	}

	@PostMapping("/login.do")
	public String login(InfoDTO info, HttpSession session) {

		InfoDTO user_info = mapper.login(info);

		System.out.println(user_info);

		if (info != null) {
			session.setAttribute("user_info", user_info);
			return "Main";

		} else {
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

		InfoDTO result = mapper.select(id);

		model.addAttribute("result", result);

		return "Update";
	}

	@RequestMapping("/update.do")
	public String update(InfoDTO info) {

		System.out.println(info);

		mapper.update(info);

		return "Login";
	}

}