package com.smhrd.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.smhrd.domain.GoodDTO;
import com.smhrd.domain.InfoDTO;
import com.smhrd.domain.SongDTO;

// 이 파일이 Mapper라고 알려주기 위함
@Mapper
public interface EmotionsMapper {
	
	public int join(InfoDTO info);
	
	public InfoDTO login(InfoDTO info);
	
	public void update(InfoDTO info);
	
	public InfoDTO select(String id);
	
	public void delete(InfoDTO info);
	
	public List<SongDTO> songList();
	
	public int songinsert(GoodDTO dto);

	public String lyrics(int num);
}
