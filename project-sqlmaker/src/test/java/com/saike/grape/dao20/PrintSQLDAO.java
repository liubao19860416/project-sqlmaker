package com.saike.grape.dao20;

import com.saike.grape.dao20.entity.BaseEntity;

/**
 * 只用來測試當SQL 出現錯誤時是否打印出完整的SQL
 */
public interface PrintSQLDAO extends GenericDAO<BaseEntity> {

    public int insertObj();

    public int updateObj();

    public int deleteObj();

    public BaseEntity findObj();
}
