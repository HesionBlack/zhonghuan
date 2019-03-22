package com.zhonghuan.daoimpl;

import com.zhonghuan.dao.RegisterDao;
import com.zhonghuan.daoimpl.common.BaseDaoImpl;
import com.zhonghuan.entity.Register;

/**
 * 学生注册具体实现
 * 
 * @author Administrator
 *
 */
public class RegisterDaoImpl extends BaseDaoImpl<Register> implements
		RegisterDao {

	@Override
	public Register loginService(String login, String pwd) {
		// TODO Auto-generated method stub
		String sql = "select * from register where login = ? and pwd = ?";
		Register rg = this.findOne(sql, new Object[] { login,pwd });
		return rg;
	}
	@Override
	public void updatePwd(Long id, String newpwd) {
		// TODO Auto-generated method stub
		String sql = "update register set pwd = ?  where id = ?";
		this.update(sql, new Object[] { newpwd,id });
	}

	

}
