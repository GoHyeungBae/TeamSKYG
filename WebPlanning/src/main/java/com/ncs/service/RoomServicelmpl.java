package com.ncs.service;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

import com.ncs.vo.RoomVO;

@Service("ARoom")
public class RoomServicelmpl implements RoomService{

	@Inject//java 제공 어노테이션 타입으로 연결
	SqlSession dao;
	
	private static final String NS = "plan.roomMapper";
	 
	// 도시코드 정보
	@Override
	public RoomVO select_cityCode(RoomVO rVO) {
		return dao.selectOne(NS + ".select_cityCode", rVO);
	}
	
	// 숙박 정보 등록
	@Override
	public int insertRoom(RoomVO rVO) {
		
		return dao.insert(NS +".insertRoom", rVO);
	}
	
}//class
