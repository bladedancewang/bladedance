package com.basic.sys.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.basic.sys.entity.SysRoleDeptEntity;

/**
 * 角色与部门对应关系
 * 
 * @author bladedance
 * @email wjj542@gmail.com
 * @date 2017年6月21日 23:33:46
 */
@Mapper
public interface SysRoleDeptDao extends BaseDao<SysRoleDeptEntity> {
	
	/**
	 * 根据角色ID，获取部门ID列表
	 */
	List<Long> queryDeptIdList(Long roleId);
}
