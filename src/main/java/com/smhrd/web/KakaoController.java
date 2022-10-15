package com.smhrd.web;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.smhrd.domain.InfoDTO;
import com.smhrd.mapper.EmotionsMapper;

@Controller
//@RequestMapping(value="/web/*")
public class KakaoController {
	
	@Autowired
	private EmotionsMapper mapper;

	
	int kakao=0;
	@RequestMapping(value="/Login", method=RequestMethod.GET)
	public String kakaoLogin(@RequestParam(value = "code", required = false) String code, HttpSession session) throws Exception {
		int cnt = 0;
		String id = null;
		System.out.println("#########" + code);
		
		String access_Token = "";
		String refresh_Token = ""; 
		String reqURL = "https://kauth.kakao.com/oauth/token";
		try {
			URL url = new URL(reqURL);
            
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			// POST 요청을 위해 기본값이 false인 setDoOutput을 true로
            
			conn.setRequestMethod("POST");
			conn.setDoOutput(true);
			// POST 요청에 필요로 요구하는 파라미터 스트림을 통해 전송
            
			BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(conn.getOutputStream()));
			StringBuilder sb = new StringBuilder();
			sb.append("grant_type=authorization_code");
            
			sb.append("&client_id=8e7f238c509ff6d0f8008b629697d005"); //본인이 발급받은 key
			sb.append("&redirect_uri=http://localhost:8083/web/Login"); // 본인이 설정한 주소
            
			sb.append("&code=" + code);
			bw.write(sb.toString());
			bw.flush();
            
			// 결과 코드가 200이라면 성공
			int responseCode = conn.getResponseCode();
			System.out.println("responseCode : " + responseCode);
            
			// 요청을 통해 얻은 JSON타입의 Response 메세지 읽어오기
			BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			String line = "";
			String result = "";
            
			while ((line = br.readLine()) != null) {
				result += line;
			}
			System.out.println("response body : " + result);
            
			// Gson 라이브러리에 포함된 클래스로 JSON파싱 객체 생성
			JsonParser parser = new JsonParser();
			JsonElement element = parser.parse(result);
            
			access_Token = element.getAsJsonObject().get("access_token").getAsString();
			refresh_Token = element.getAsJsonObject().get("refresh_token").getAsString();
            
			System.out.println("access_token : " + access_Token);
			System.out.println("refresh_token : " + refresh_Token);
            
			br.close();
			bw.close();
		} catch (IOException e) {
			e.printStackTrace();
		} 
		
		String reqURL2 = "https://kapi.kakao.com/v2/user/me";
		try {
			URL url = new URL(reqURL2);
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			conn.setRequestMethod("GET");
			conn.setRequestProperty("Authorization", "Bearer " + access_Token);
			int responseCode = conn.getResponseCode();
			System.out.println("responseCode : " + responseCode);
			BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			String line = "";
			String result = "";
			while ((line = br.readLine()) != null) {
				result += line;
			}
			System.out.println("response body : " + result);
			JsonParser parser = new JsonParser();
			JsonElement element = parser.parse(result);
			System.out.println("result 성공");
			
			// 사용자 정보 가져오기
			JsonObject properties = element.getAsJsonObject().get("properties").getAsJsonObject();
			JsonObject ids = element.getAsJsonObject();
			JsonObject kakao_account = element.getAsJsonObject().get("kakao_account").getAsJsonObject();
			String nickname = properties.getAsJsonObject().get("nickname").getAsString();
//			String gender = kakao_account.getAsJsonObject().get("gender").getAsString();
			id = ids.get("id").getAsString();
			
//			if(gender.equals("male")) {
//				gender = "남";
//			}else {
//				gender ="여";
//			}
			
			System.out.println(nickname);
//			System.out.println(gender);
			System.out.println(id);		
			System.out.println(result);
			
			InfoDTO dto = new InfoDTO(id, id, nickname, "null", "null");
			System.out.println(dto);
			
			List<InfoDTO> info = mapper.kakaoinfo();
			System.out.println(info);
			
			
			
			for (int i=0; i<info.size(); i++) {
				String infoid = info.get(i).getId();
				if (infoid.equals(id)){
				 kakao = 1;
				}
			}
			
			if (kakao<1) {
					cnt = mapper.join(dto);					
			}
			
			System.out.println("성공");
			
			session.setAttribute("user_info", dto);
			
		} catch (IOException e) {
			e.printStackTrace();
		}
	
		if (cnt > 0) {
			return "Main";
		} else if( kakao==1){
			return "Main";
		}else {
			return "Login";
		}

	}

}