package com.basic.sys.service;

import java.util.Map;

import com.basic.sys.entity.TokenEntity;

/**
 * 用户Token
 * 
 * @author bladedance
 * @email bladedance@vip.qq.com
 * @date 2017-06-23 15:22:07
 */
public interface TokenService {

	TokenEntity queryByUserId(Long userId);

	TokenEntity queryByToken(String token);
	
	void save(TokenEntity token);
	
	void update(TokenEntity token);

	/**
	 * 生成token
	 * @param userId  用户ID
	 * @return        返回token相关信息
	 */
	Map<String, Object> createToken(long userId);

}
