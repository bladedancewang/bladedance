package com.basic.sys.dao;

import java.util.Map;

import com.basic.sys.entity.ScheduleJobEntity;

/**
 * 定时任务
 * 
 * @author bladedance
 * @email bladedance@vip.qq.com
 * @date 2017年6月1日 下午10:29:57
 */
public interface ScheduleJobDao extends BaseDao<ScheduleJobEntity> {
	
	/**
	 * 批量更新状态
	 */
	int updateBatch(Map<String, Object> map);
}
