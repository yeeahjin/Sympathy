package com.smhrd.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor // 모든 필드를 초기화 하는 생성자
@Data
public class SongDTO {

	private int song_seq;
	private String song_title;
	private String singer;
	private String img;
	private String lyrics;
	private String link;
	

}