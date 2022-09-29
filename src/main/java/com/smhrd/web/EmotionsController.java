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
import com.smhrd.mapper.EmotionsMapper;

// 어노테이션을 이용해서 이 파일이 Controller다 라고 알려줘야 함.
@Controller
public class EmotionsController {

	@Autowired
	private EmotionsMapper mapper;

	@RequestMapping("/login")
	public String login() {
		return "Login";

	}


}
