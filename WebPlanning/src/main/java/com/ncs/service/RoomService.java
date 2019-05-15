package com.ncs.service;

import com.ncs.vo.RoomVO;

public interface RoomService {
	// 도시코드 정보
	public RoomVO select_cityCode(RoomVO rVO);
	
	//숙박 정보 등록 
	public int insertRoom(RoomVO rVO);
	
}//interface
