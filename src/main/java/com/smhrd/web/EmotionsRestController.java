package com.smhrd.web;

import java.util.ArrayList;
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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonParser;
import com.smhrd.domain.BadDTO;
import com.smhrd.domain.ChartDTO;
import com.smhrd.domain.GoodDTO;
import com.smhrd.domain.InfoDTO;
import com.smhrd.domain.LocationDTO;
import com.smhrd.domain.SongDTO;
import com.smhrd.mapper.EmotionsMapper;

import jdk.nashorn.internal.parser.JSONParser;

// @RestController를 붙이면 @ResponseBody 안붙여도 됨
@Controller
public class EmotionsRestController {

	// Ajax요청을 처리할 컨트롤러 ==> RestController
	
	@Autowired
	private EmotionsMapper mapper;

	@RequestMapping("/go")
	public String go() {
		return "Main";
	}	
	
	@RequestMapping("/goodpage.do")
	public String goodpage() {
		return "good";
	}	
	
	@RequestMapping("/badpage.do")
	public String badpage() {
		return "bad";
	}	
	
	@RequestMapping("/outpage.do")
	public String outpage() {
		return "out";
	}	
	
	
	@RequestMapping("/mypage.do")
	public String mypage() {
		return "mypage";
	}	
		
		
	@RequestMapping("/chart.do")
	public String inggichart() {
		return "chart";
	}
	
	@RequestMapping("/ingichart")
	public @ResponseBody List<ChartDTO> chartList(){
		List<ChartDTO> list = mapper.chartList();
		System.out.println("여기들어옴");
		return list;
	}
	
	// 좋아요 테이블 정보 가져오기 ajax
	@RequestMapping("/goodList")
	public @ResponseBody List<SongDTO> goodList(HttpSession session){
		
		// 로그인한 아이디 가져오기
		InfoDTO user_info = (InfoDTO)session.getAttribute("user_info");
		String id =user_info.getId();
		
		// 아이디 해당되는 좋아요 곡번호 가져오기
		List<Integer> likelist = mapper.goodList(id);
		
		// 곡번호에 해당되는 노래 가져오기
		List<SongDTO> res = new ArrayList<SongDTO>();
		
		for (int i=0; i<likelist.size(); i++) {
			
			SongDTO list = mapper.kbsongList(likelist.get(i));
			
			System.out.println(list);
			
			res.add(list);
		}
		
		return res;
	}
	
	// 좋아요 테이블 정보 가져오기 ajax
	@RequestMapping("/badList")
	public @ResponseBody List<SongDTO> badList(HttpSession session){
		
		// 로그인한 아이디 가져오기
		InfoDTO user_info = (InfoDTO)session.getAttribute("user_info");
		String id =user_info.getId();
		
		// 아이디 해당되는 좋아요 곡번호 가져오기
		List<Integer> badlist = mapper.badList(id);
		
		// 곡번호에 해당되는 노래 가져오기
		List<SongDTO> res = new ArrayList<SongDTO>();
		
		for (int i=0; i<badlist.size(); i++) {
			
			SongDTO list = mapper.kbsongList(badlist.get(i));
			
			System.out.println(list);
			
			res.add(list);
		}
		
		return res;
	}
	

	
	@RequestMapping("/golocation.do")
	public String golocation() {
		return "location";
	}
	
	@RequestMapping("/locationList.do")
	public @ResponseBody List<LocationDTO> locationList() {
		
		List<LocationDTO> loc = mapper.locationList(); // 전체를 들고오는 함수

		return loc;
	}
	
	@RequestMapping("/goJoin.do")
	public String goJoin() {
		return "Join";
	}
	
	@RequestMapping("/log.do")
	public String log() {
		return "Login";
	}
	
	
	@RequestMapping("/Rerutn.do")
	public String Rerutn() {
		return "Login";
	}
	@RequestMapping("/join.do")
	public String join(InfoDTO info) {
		
		//System.out.println(info.getId());
		//System.out.println(info.getNick());

		int cnt = mapper.join(info);
		// 4. 다음 view 리턴
		if (cnt > 0) {
			return "Login";

		} else {
			return "Join";
		}

	}

	@RequestMapping("/login.do")
	public String login(InfoDTO info, HttpSession session, Model model) {
		
		InfoDTO user_info = mapper.login(info);
		
		session.setAttribute("user_info", user_info);
		
		if (user_info != null) {
			return "Main";
		}else{
			
			System.out.println("실패");
			return "Login";
			
		}
	}

	@RequestMapping("/logout.do")
	public String logout(HttpSession session, HttpServletResponse response) throws Exception {

		session.removeAttribute("user_info");

		return "Main"; // redirect://
	}

	@GetMapping("/updatepage.do")
	public String updatepage(String id, Model model) {
		
		System.out.println("들어와짐");
		InfoDTO result = mapper.select(id);

		model.addAttribute("result", result);
		
		

		return "change";
	}

	@RequestMapping("/update.do")
	public String update(InfoDTO info) {

		mapper.update(info);

		return "Main";
	}

	@RequestMapping(value="/delete",produces="text/plain;charset=UTF-8")
	public String delete(HttpSession session) {
		
		InfoDTO user_info = (InfoDTO)session.getAttribute("user_info");
		
		System.out.println(user_info);
		String id = user_info.getId();
		
		mapper.gooddelete(id);
		mapper.baddelete(id);
		
		mapper.delete(user_info);
		
		
		session.removeAttribute("info");
		
		return "Main";
	}
	
	
	
	// AJAX
	
	// 좋아요 노래 추가
	@RequestMapping("/songinsert")
	public @ResponseBody void songinsert(String songnumber, HttpSession session) {
		
		int song_seq = Integer.parseInt(songnumber); 
		
		InfoDTO user_info = (InfoDTO) session.getAttribute("user_info");
		
		String id = user_info.getId();
		
		GoodDTO dto = new GoodDTO(id, song_seq);
		
		mapper.songinsert(dto);
		
	}
	
	
	@RequestMapping("/songdelete")
	public @ResponseBody void songdelete(String songnumber, HttpSession session) {
		
		int song_seq = Integer.parseInt(songnumber); 
		
		InfoDTO user_info = (InfoDTO) session.getAttribute("user_info");
		
		String id = user_info.getId();
		
		GoodDTO dto = new GoodDTO(id, song_seq);
		
		mapper.songdelete(dto);
		
	}
	
	@RequestMapping("/hatedelete")
	public @ResponseBody void hatedelete(String songnumber, HttpSession session) {
		
		int song_seq = Integer.parseInt(songnumber); 
		
		InfoDTO user_info = (InfoDTO) session.getAttribute("user_info");
		
		String id = user_info.getId();
		
		BadDTO dto = new BadDTO(id, song_seq);
		
		mapper.hatedelete(dto);
		
	}
	
	
	
	
	// 싫어요 노래 추가
		@RequestMapping("/hateinsert")
		public @ResponseBody void hateinsert(String songnumber, HttpSession session) {

			int song_seq = Integer.parseInt(songnumber);

			InfoDTO user_info = (InfoDTO) session.getAttribute("user_info");
			
			String id = user_info.getId();
			
			BadDTO dto = new BadDTO(id, song_seq);
			

			mapper.hateinsert(dto);

		}
		
		/*
		 * @RequestMapping("/songList") public @ResponseBody List<SongDTO> songList(){
		 * List<SongDTO> list = mapper.songList(); System.out.println(list.get(0));
		 * return list; }
		 */
	
	@RequestMapping("/kbsongList.do")
	public @ResponseBody List<SongDTO> kbsongList(String result, HttpSession session) {
		
		System.out.println(result);
		
		// 문자 나누기
		String[] array = result.split(" ");
		
		List<SongDTO> res = new ArrayList<SongDTO>();
		
		if (session.getAttribute("user_info") != null) {
			// 싫어요에 해당되는 노래 제거
			InfoDTO user_info = (InfoDTO) session.getAttribute("user_info");
			
			String id = user_info.getId();
			
			List<Integer> badlist = mapper.badList(id);
			
			for (int i=0; i<20; i++) {
				
				int yesno = 0;
				
				// 모델링 돌린 결과 : 문자를 숫자로
				int num = Integer.parseInt(array[i]);
				System.out.println("여기가 문제1");
				for (int j=0; j<badlist.size(); j++) {
					if (num == badlist.get(j)) {
						yesno = 1;
						break;
					}
				}
				
				System.out.println(yesno);
				
				if (yesno <1) {
					SongDTO list = mapper.kbsongList(num);
					
					System.out.println(list);
					
					res.add(list);
				}
			}
		}else {
			
			for (int i=0; i<20; i++) {
				
				// 모델링 돌린 결과 : 문자를 숫자로
				int num = Integer.parseInt(array[i]);
				
					SongDTO list = mapper.kbsongList(num);
					
					System.out.println(list);
					
					res.add(list);
				}
			}

		
		return res;
	}
	
	@RequestMapping(value="/lyrics",produces="text/plain;charset=UTF-8")
	public @ResponseBody String lyrics(int num) {
		String text = mapper.lyrics(num);
		return text;
	}
	
	 // 가사
	
	@RequestMapping(value="/lyrics2",produces="text/plain;charset=UTF-8")
	public @ResponseBody String lyrics2(int num) {
		String text = mapper.lyrics2(num);
		return text;
	}
	
	@RequestMapping("/lyrics.do")
	public String lyricss(String ly, HttpSession session) {
		
		System.out.println(ly);
		
		session.setAttribute("lyrics", ly);
		
		return "lyrics";
	}	
	
	
	
	
	
	@RequestMapping(value="/songpreview",produces="text/plain;charset=UTF-8")
	public @ResponseBody String preview(int num) {
		//System.out.println(num);
		String text = mapper.songpreview(num);
		//System.out.println(text);
		return text;
	}
		
	@RequestMapping(value="/songpractice",produces="text/plain;charset=UTF-8")
	public @ResponseBody String practice(int num) {
		//System.out.println(num);
		String text = mapper.songpractice(num);
		//System.out.println(text);
		return text;
	}
	
	//아이디 중복체크
			@PostMapping("/idCheck")
			@ResponseBody
			public int idCheck(@RequestParam("id") String id) {	
				
				int cnt = mapper.idCheck(id);
				System.out.println(cnt);
				return cnt;
				
			}
			
		
			// 닉네임 중복체크
			@PostMapping("/nickCheck")
			@ResponseBody
			public int nickCheck(@RequestParam("nick") String nick) {
				int cnt = mapper.checknick(nick);
				return cnt;
				
			}
	       
	}
	
	
	
	
	
	
