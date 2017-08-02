package com.basic.sys.task;

import org.springframework.stereotype.Component;

import com.alibaba.fastjson.JSONObject;

/**
 * 测试定时任务(演示Demo，可删除)
 * 
 * testTask为spring bean的名称
 * 
 * @author bladedance
 * @email bladedance@vip.qq.com
 * @date 2017年6月30日 下午1:34:24
 */
@Component("testTask")
public class TestTask extends BaseTask {
	
	
	public void test(String params){
		logger.info("演示用定时任务");
		JSONObject json =parseJSONObject(params);
		logger.info("key1" + getValue(json,"key1"));
		logger.info("key2" + getValue(json,"key2"));
		logger.info("key3" + getValue(json,"key3"));
		logger.info("key4" + getValue(json,"key4"));
		
	}
}
