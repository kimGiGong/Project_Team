package com.goldDog.persistence;

import java.util.List;

import com.goldDog.domain.Criteria;
import com.goldDog.domain.MemberVO;

public interface MainMapper {
	
	
	// 맴버 정보 가져오기 페이징 처리 된 버젼
	public List<MemberVO> getMember(Criteria cri); 
	
	
	
	
	
	
	
	
}
