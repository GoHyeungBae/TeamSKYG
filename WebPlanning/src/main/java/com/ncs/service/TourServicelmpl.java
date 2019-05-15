package com.ncs.service;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

import com.ncs.vo.TourVO;

@Service("ATour")
public class TourServicelmpl implements TourService{

	@Inject //java 제공 어노테이션 타입으로 연결
	SqlSession dao;
	
	private static final String NS = "plan.tourMapper";
	
	//도시 코드 정보
	@Override
	public TourVO select_cityCode(TourVO tVO) {
		return dao.selectOne(NS + ".select_cityCode", tVO);
	}//cityCode
	
	// 관광지 정보 등록
	@Override
	public int insertTour(TourVO tVO) {
		return dao.insert(NS + ".insertTour", tVO);
	}//insertTour
	
}//class
