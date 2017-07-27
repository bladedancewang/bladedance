package com.basic.sys.dao;

import com.basic.sys.entity.UserEntity;

/**
 * 用户
 * 
 * @author 王甲建
 * @email wjj542@gmail.com
 * @date 2017-06-23 15:22:06
 */
public interface UserDao extends BaseDao<UserEntity> {

    UserEntity queryByMobile(String mobile);
}
