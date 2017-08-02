package com.basic.sys.dao;

import java.util.List;

import com.basic.sys.entity.SysRoleEntity;

/**
 * 角色管理
 * 
 * @author bladedance
 * @email bladedance@vip.qq.com
 * @date 2017年7月18日 上午9:33:33
 */
public interface SysRoleDao extends BaseDao<SysRoleEntity> {
	
	/**
	 * 查询用户创建的角色ID列表
	 */
	List<Long> queryRoleIdList(Long createUserId);
}
