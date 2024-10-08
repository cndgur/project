package com.lc.project.business.Service;

import com.lc.project.business.model.vo.Business;

public interface BusinessService {
	public abstract Business loginBusiness(Business b);
	int insertBusiness(Business b);
}
