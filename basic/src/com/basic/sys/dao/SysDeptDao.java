package com.basic.sys.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.basic.sys.entity.SysDeptEntity;

/**
 * 部门管理
 * 
 * @author bladedance
 * @email wjj542@gmail.com
 * @date 2017-06-20 15:23:47
 */
@Mapper
public interface SysDeptDao extends BaseDao<SysDeptEntity> {

    /**
     * 查询子部门ID列表
     * @param parentId  上级部门ID
     */
    List<Long> queryDetpIdList(Long parentId);
}
