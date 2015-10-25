package com.saike.grape.dao20.api.basic;

import com.saike.grape.dao20.GenericDAO;
import com.saike.grape.dao20.entity.CacheJedis;

/**
 * 车辆DAO接口
 *
 * @Author Wang Tao
 * @Company Saike
 * @Version V2.0
 */

public interface CacheJedisDAO extends GenericDAO<CacheJedis> {
    public CacheJedis getCacheJedisByCodeAndKey(String code,String deviceId);
    public boolean  updateCacheJedisByCodeAndKey(String code,String deviceId,String value);
}
