package com.saike.grape.dao20.entity;

import org.apache.ibatis.type.Alias;

/**
 * 品牌实体类
 *
 * @Author Wang Tao
 * @Company Saike
 * @Version V2.0
 */

@Alias( "brand" )
public class Brand extends BaseEntity {

    private static final long serialVersionUID = 5676295136087897755L;

	private String name;            //名称
	private String parentCode;      //父编号
	private int level;              //层级
	private String fullPath;        //全路径
	private String shortName;       //简称
	private String imageUrl;		//品牌URL
	
	public String getShortName() {
        return shortName;
    }

    public void setShortName(String shortName) {
        this.shortName = shortName;
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

	public String getImageUrl() {
		return imageUrl;
	}

	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}
}
