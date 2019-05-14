package com.ncs.service;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

import com.ncs.vo.CityVO;

@Service("city")
public class CityAdminServiceImpl implements CityAdminService{

	@Inject
	SqlSession dao;
	private static final String CTNS= "plan.cityMapper";
	@Override
	public int insertCity(CityVO cVO) {
		
		return dao.insert(CTNS + ".insertCity", cVO);
		
	}

}
