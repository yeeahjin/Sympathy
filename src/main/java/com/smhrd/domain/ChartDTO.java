package com.smhrd.domain;

import java.math.BigDecimal;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor // 모든 필드를 초기화 하는 생성자
@Data
public class ChartDTO {

	private BigDecimal seq;
	private BigDecimal song_seq;
	private String emotion;
	

}