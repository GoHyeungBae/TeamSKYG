package com.ncs.service;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

import com.ncs.vo.EatInfoVO;

@Service("eatInfo")
public class EatInfoServiceImpl implements EatInfoService{

	@Inject
	SqlSession dao;

	private static final String NS = "plan.eatInfoMapper";
	// 식당 정보등록
	
	@Override
	public int insertEatInfo(EatInfoVO eVO) {
		return dao.insert(NS + ".insertEatInfo", eVO);
	} //insertEatInfo
	
}
