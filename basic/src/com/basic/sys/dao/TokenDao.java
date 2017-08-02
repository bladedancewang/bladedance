package com.basic.sys.dao;

import com.basic.sys.entity.TokenEntity;

/**
 * 用户Token
 * 
 * @author bladedance
 * @email bladedance@vip.qq.com
 * @date 2017-06-23 15:22:07
 */
public interface TokenDao extends BaseDao<TokenEntity> {
    
    TokenEntity queryByUserId(Long userId);

    TokenEntity queryByToken(String token);
	
}
