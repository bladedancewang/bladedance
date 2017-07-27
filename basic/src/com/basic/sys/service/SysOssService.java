package com.basic.sys.service;

import java.util.List;
import java.util.Map;

import com.basic.sys.entity.SysOssEntity;

/**
 * 文件上传
 * 
 * @author 王甲建
 * @email wjj542@gmail.com
 * @date 2017-06-25 12:13:26
 */
public interface SysOssService {
	
	SysOssEntity queryObject(Long id);
	
	List<SysOssEntity> queryList(Map<String, Object> map);
	
	int queryTotal(Map<String, Object> map);
	
	void save(SysOssEntity sysOss);
	
	void update(SysOssEntity sysOss);
	
	void delete(Long id);
	
	void deleteBatch(Long[] ids);
}
