package com.saike.grape.dao20.api.basic;

import com.saike.grape.dao20.GenericDAO;
import com.saike.grape.dao20.entity.City;

import java.util.List;

/**
 * 城市DAO接口
 *
 * @Author Wang Tao
 * @Company Saike
 * @Version V2.0
 */

public interface CityDAO extends GenericDAO<City> {
    
    public List<City> getProvinceList();
    
    public List<City> getCityList();

	public List<City> getAreaList();
    
    public List<City> getCityList( String provincePath );
    
    public List<City> getAreaList( String cityPath );

    public List<City> getCityAreaList( String cityCode, String vehicleCode, 
            List<String> dealerCodesInclude );
    
    public List<City> getCityByCodeList( List<String> code );

	public List<City> getAllCityList();
    
    public City getCityByName( String name );

	public int insertCity( City city );
    
    public int updateCity( City city );
    
}
