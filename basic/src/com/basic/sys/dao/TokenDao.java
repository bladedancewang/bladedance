package com.basic.sys.dao;

import com.basic.sys.entity.TokenEntity;

/**
 * 用户Token
 * 
 * @author 王甲建
 * @email wjj542@gmail.com
 * @date 2017-06-23 15:22:07
 */
public interface TokenDao extends BaseDao<TokenEntity> {
    
    TokenEntity queryByUserId(Long userId);

    TokenEntity queryByToken(String token);
	
}
