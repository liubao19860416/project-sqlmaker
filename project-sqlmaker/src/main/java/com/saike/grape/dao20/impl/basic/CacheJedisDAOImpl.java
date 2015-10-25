package com.saike.grape.dao20.impl.basic;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.saike.grape.dao20.GenericDAOBatisImpl;
import com.saike.grape.dao20.api.basic.CacheJedisDAO;
import com.saike.grape.dao20.entity.CacheJedis;

/**
 * 车辆DAO实现类
 *
 * @Author Wang Tao
 * @Company Saike
 * @Version V2.0
 */

@Repository
public class CacheJedisDAOImpl extends
        GenericDAOBatisImpl<CacheJedis, CacheJedisDAOImpl> implements CacheJedisDAO {

    @Override
    public CacheJedis getCacheJedisByCodeAndKey(String code, String deviceId) {
        Map<String,String> map = new HashMap<String,String>();
        map.put("code", code);
        map.put("deviceId", deviceId);
      
        return  this.selectOne("selectByCodeAndKey", map);
    }

    @Override
    public boolean updateCacheJedisByCodeAndKey(String code, String deviceId,
            String value) {
        Map<String,String> map = new HashMap<String,String>();
        map.put("code", code);
        map.put("deviceId", deviceId);
        map.put("value", value);
        return this.update("updateByCodeAndKey", map)<0?false:true;
    }

    
}
