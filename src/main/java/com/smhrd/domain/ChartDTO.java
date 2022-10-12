package com.smhrd.domain;

import java.math.BigDecimal;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor // 모든 필드를 초기화 하는 생성자
@Data
public class ChartDTO {
// 오류바꾸기

	
	private int rank;
	private int song_se;
	private String song_title;
	private String singer;
	private String img;
	private String preview;
	private String lyrics;
	private String link;
	

}