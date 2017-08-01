package com.basic.sys.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.basic.sys.entity.SysUserEntity;
import com.basic.sys.utils.ShiroUtils;

/**
 * Controller公共组件
 * 
 * @author 王甲建
 * @email wjj542@gmail.com
 * @date 2017年6月9日 下午9:42:26
 */
public abstract class AbstractController {
	protected Logger logger = LoggerFactory.getLogger(getClass());
	
	protected SysUserEntity getUser() {
		return ShiroUtils.getUserEntity();
	}

	protected Long getUserId() {
		return getUser().getUserId();
	}
	
	protected Long getDeptId() {
		return getUser().getDeptId();
	}
}
