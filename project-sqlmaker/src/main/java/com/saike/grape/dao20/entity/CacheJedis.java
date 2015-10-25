package com.saike.grape.dao20.entity;

import org.apache.ibatis.type.Alias;
/**
 * 
 * @Author lishen
 * @Company Saike
 * @Version V2.0
 * @date 2014年11月27日
 */

@Alias( "cacheJedis" )
public class CacheJedis  extends BaseEntity{
    private static final long serialVersionUID = 1L;
    private String deviceId;
    private String value;
    public String getDeviceId() {
        return deviceId;
    }
    public void setDeviceId(String deviceId) {
        this.deviceId = deviceId;
    }
    public String getValue() {
        return value;
    }
    public void setValue(String value) {
        this.value = value;
    }
}
