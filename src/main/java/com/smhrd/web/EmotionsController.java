package com.smhrd.web;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.smhrd.domain.InfoDTO;
import com.smhrd.mapper.EmotionsMapper;

// 어노테이션을 이용해서 이 파일이 Controller다 라고 알려줘야 함.
@Controller
public class EmotionsController {

	@Autowired
	private EmotionsMapper mapper;

//	Login.jsp 화면 보여주기
	@GetMapping("/login.do")
	public String login() {
		return "Login";
	}

//	fomr 요청시 로그인 하는곳
	@PostMapping("/login.do")
	public String login(InfoDTO dto) {
		System.out.println(dto);
		mapper.login(dto);
		return "Main";
	}

}
