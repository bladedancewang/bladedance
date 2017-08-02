package com.basic.sys.task;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;

public class BaseTask {
	Logger logger = LoggerFactory.getLogger(getClass());


	JSONObject parseJSONObject(String jsonParams){
		if(jsonParams==null||jsonParams.equals("")){
			return null;
		}
		return JSON.parseObject(jsonParams);
	}
	
	/**
	 * 根据键值获取定时任务json格式参数的中value
	 * */
	String getValue(JSONObject json,String jsonKey) {
		String jsonValue = null;
		if (json != null) {
			if (json.get(jsonKey) != null) {
				jsonValue = json.get(jsonKey).toString();
			}
		}
		return jsonValue;
	}

	
	/**
	 * 格式化时间为字符串
	 */
	String DateToString(Date date) {
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String dateString = format.format(date);
		return dateString;
	}


	/**
	 * 获取当前时间的前N分钟
	 */
	Date getLastDay(int n) {
		Calendar cal = Calendar.getInstance();
		
		cal.set(Calendar.MINUTE, cal.get(Calendar.MINUTE) - n);

		return cal.getTime();
	}
}
