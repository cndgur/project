package com.lc.project.business.Service;

import org.apache.ibatis.session.SqlSession;

import com.lc.project.business.model.dao.BusinessDao;
import com.lc.project.business.model.vo.Business;
import com.lc.project.common.template.Template;

public class BusinessServiceImpl implements BusinessService {

	private BusinessDao bDao = new BusinessDao();
	
	@Override
	public Business loginBusiness(Business b) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insertBusiness(Business b) {
		SqlSession sqlSession = Template.getSqlSession();
		int result = bDao.insertBusiness(sqlSession, b);
		
		if(result > 0) {
			sqlSession.commit();
		}else {
			sqlSession.rollback();
		}
		sqlSession.close();
		
		return result;
	}

}
