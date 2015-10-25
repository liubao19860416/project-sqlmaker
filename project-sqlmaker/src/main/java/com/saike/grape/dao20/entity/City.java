package com.saike.grape.dao20.entity;

import org.apache.ibatis.type.Alias;

/**
 * 城市实体类
 *
 * @Author Wang Tao
 * @Company Saike
 * @Version V2.0
 */

@Alias("city")
public class City extends BaseEntity {

    private static final long serialVersionUID = 7999956163189526247L;

	private String cityCode;

	private String cityName;

	private String areaCode;

	private String areaName;


	private String name;            //名称
	private String parentCode;      //父编号
	private int level;              //层级
	private String fullPath;        //全路径

	public String getCityCode() {
		return cityCode;
	}

	public void setCityCode(String cityCode) {
		this.cityCode = cityCode;
	}

	public String getCityName() {
		return cityName;
	}

	public void setCityName(String cityName) {
		this.cityName = cityName;
	}

	public String getAreaCode() {
		return areaCode;
	}

	public void setAreaCode(String areaCode) {
		this.areaCode = areaCode;
	}

	public String getAreaName() {
		return areaName;
	}

	public void setAreaName(String areaName) {
		this.areaName = areaName;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getParentCode() {
		return parentCode;
	}

	public void setParentCode(String parentCode) {
		this.parentCode = parentCode;
	}

	public int getLevel() {
		return level;
	}

	public void setLevel(int level) {
		this.level = level;
	}

	public String getFullPath() {
		return fullPath;
	}

	public void setFullPath(String fullPath) {
		this.fullPath = fullPath;
	}
}
