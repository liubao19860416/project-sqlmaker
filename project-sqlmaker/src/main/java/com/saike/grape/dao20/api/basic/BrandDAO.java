package com.saike.grape.dao20.api.basic;

import com.saike.grape.dao20.GenericDAO;
import com.saike.grape.dao20.entity.Brand;

import java.util.List;

/**
 * 品牌DAO接口
 *
 * @Author Wang Tao
 * @Company Saike
 * @Version V2.0
 */

public interface BrandDAO extends GenericDAO<Brand> {
    
    public List<Brand> getBrandList();
    
    public List<Brand> getSubBrandList( String brandPath );
    
    public List<Brand> getVelseriesList( String velseriesPath );
    
    public List<Brand> getBrandByCodeList( List<String> code );
    
    public int updateBrand( Brand brand );
    
    public List<Brand> getAll();
    
}
