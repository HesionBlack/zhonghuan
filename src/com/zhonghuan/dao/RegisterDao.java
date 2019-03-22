package com.zhonghuan.dao;

import com.zhonghuan.dao.common.BaseDao;
import com.zhonghuan.entity.Register;

/**
 * 学生注册接口
 * 
 * @author Administrator
 *
 */
public interface RegisterDao extends BaseDao<Register> {
     /**
      * 查找数据库中用户名密码是否正确
      * @param login
      * @param pwd
      * @return
      */
	Register loginService(String login, String pwd);
     /**
      * 更新密码
      * @param id  学生注册ID
      * @param newpwd 新密码
      */
	public void updatePwd(Long id, String newpwd);

	

}
