package com.basic.sys.service;

import java.util.List;
import java.util.Map;

import com.basic.sys.entity.SysLogEntity;

/**
 * 系统日志
 * 
 * @author 王甲建
 * @email wjj542@gmail.com
 * @date 2017-06-08 10:40:56
 */
public interface SysLogService {
	
	SysLogEntity queryObject(Long id);
	
	List<SysLogEntity> queryList(Map<String, Object> map);
	
	int queryTotal(Map<String, Object> map);
	
	void save(SysLogEntity sysLog);
	
	void update(SysLogEntity sysLog);
	
	void delete(Long id);
	
	void deleteBatch(Long[] ids);
}
