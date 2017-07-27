package com.basic.sys.dao;

import org.apache.ibatis.annotations.Param;

import com.basic.sys.entity.SysConfigEntity;

/**
 * 系统配置信息
 * 
 * @author 王甲建
 * @email wjj542@gmail.com
 * @date 2017年6月4日 下午6:46:16
 */
public interface SysConfigDao extends BaseDao<SysConfigEntity> {
	
	/**
	 * 根据key，查询value
	 */
	String queryByKey(String paramKey);
	
	/**
	 * 根据key，更新value
	 */
	int updateValueByKey(@Param("key") String key, @Param("value") String value);
	
}
