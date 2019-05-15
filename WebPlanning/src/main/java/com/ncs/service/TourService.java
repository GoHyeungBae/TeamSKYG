package com.ncs.service;

import com.ncs.vo.TourVO;

public interface TourService {

	//도시코드 정보
	public TourVO select_cityCode(TourVO tVO);
	
	//관광지 정보 등록
	public int insertTour(TourVO tVO);
	
}//interface
