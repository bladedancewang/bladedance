package com.basic.sys.dao;

import java.util.List;

import com.basic.sys.entity.SysMenuEntity;

/**
 * 菜单管理
 * 
 * @author bladedance
 * @email bladedance@vip.qq.com
 * @date 2017年7月18日 上午9:33:01
 */
public interface SysMenuDao extends BaseDao<SysMenuEntity> {
	
	/**
	 * 根据父菜单，查询子菜单
	 * @param parentId 父菜单ID
	 */
	List<SysMenuEntity> queryListParentId(Long parentId);
	
	/**
	 * 获取不包含按钮的菜单列表
	 */
	List<SysMenuEntity> queryNotButtonList();
	
	/**
	 * 查询用户的权限列表
	 */
	List<SysMenuEntity> queryUserList(Long userId);
}
