package com.smhrd.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.smhrd.domain.BadDTO;
import com.smhrd.domain.GoodDTO;
import com.smhrd.domain.InfoDTO;
import com.smhrd.domain.LocationDTO;
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
	
	public void songinsert(GoodDTO dto);
	
	public void songdelete(GoodDTO dto);

	public String lyrics(int num);
	
	public void hateinsert(BadDTO dto);
	
	public void hatedelete(BadDTO dto);
	
	public String songpreview(int num);
	
	public String songpractice(int num);
	
	public int idCheck(String id);
	
	public List<LocationDTO> locationList();
	
	public int checknick(String nick);
	
}
