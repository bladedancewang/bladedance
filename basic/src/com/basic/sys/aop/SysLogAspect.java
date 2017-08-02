package com.basic.sys.aop;

import com.alibaba.fastjson.JSON;
import com.basic.sys.annotation.SysLog;
import com.basic.sys.entity.SysLogEntity;
import com.basic.sys.service.SysLogService;
import com.basic.sys.utils.HttpContextUtils;
import com.basic.sys.utils.IPUtils;
import com.basic.sys.utils.ShiroUtils;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.aspectj.lang.reflect.MethodSignature;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.servlet.http.HttpServletRequest;
import java.lang.reflect.Method;
import java.util.Date;


/**
 * 系统日志，切面处理类
 * 
 * @author bladedance
 * @email bladedance@vip.qq.com
 * @date 2017年6月8日 上午11:07:35
 */
@Aspect
@Component
public class SysLogAspect {
	@Autowired
	private SysLogService sysLogService;
	
	@Pointcut("@annotation(com.basic.sys.annotation.SysLog)") 
	public void logPointCut() { 
		
	}
	
	@Before("logPointCut()")
	public void saveSysLog(JoinPoint joinPoint) {
		MethodSignature signature = (MethodSignature) joinPoint.getSignature();
		Method method = signature.getMethod();
		
		SysLogEntity sysLog = new SysLogEntity();
		SysLog syslog = method.getAnnotation(SysLog.class);
		if(syslog != null){
			//注解上的描述 
			sysLog.setOperation(syslog.value());
		}
		
		//请求的方法名
		String className = joinPoint.getTarget().getClass().getName();
		String methodName = signature.getName();
		sysLog.setMethod(className + "." + methodName + "()");
		
		//请求的参数
		Object[] args = joinPoint.getArgs();
		String params = JSON.toJSONString(args[0]);
		if(params==null){
			sysLog.setParams("");
		}
		
		if(params.length()>2000){
			sysLog.setParams("参数过长不显示");
		}else if(params!=null){
			sysLog.setParams(params);
		}
		
		//获取request
		HttpServletRequest request = HttpContextUtils.getHttpServletRequest();
		//设置IP地址
		sysLog.setIp(IPUtils.getIpAddr(request));
		
		//用户名
		String username = ShiroUtils.getUserEntity().getUsername();
		sysLog.setUsername(username);
		
		sysLog.setCreateDate(new Date());
		//保存系统日志
		sysLogService.save(sysLog);
	}
	
}
