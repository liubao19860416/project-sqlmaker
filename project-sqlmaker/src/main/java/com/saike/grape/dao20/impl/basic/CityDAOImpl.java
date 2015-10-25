package com.saike.grape.dao20.impl.basic;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.saike.grape.dao20.GenericDAOBatisImpl;
import com.saike.grape.dao20.api.basic.CityDAO;
import com.saike.grape.dao20.entity.City;

/**
 * 城市DAO实现类
 *
 * @Author Wang Tao
 * @Company Saike
 * @Version V2.0    
 */

@Repository
public class CityDAOImpl extends GenericDAOBatisImpl<City, CityDAOImpl>
    implements CityDAO {

    private static final Logger logger = 
            LoggerFactory.getLogger( CityDAOImpl.class );
    
    @Override
    public List<City> getProvinceList() {
		Map<String, Object> params = new HashMap<>();

		params.put(VAR_TABLE_NAME, getTableName());

		return selectList("getTreeNodeList", params);
    }
    
    @Override
    public List<City> getCityList() {
        Map<String, Object> params = new HashMap<>();

        params.put(VAR_TABLE_NAME, getTableName());
        
        return selectList( "getCityList", params );
    }

	@Override
	public List<City> getAreaList() {
		Map<String, Object> params = new HashMap<>();

		params.put(VAR_TABLE_NAME, getTableName());

		return selectList("getAreaList", params);
	}
    
    @Override
    public List<City> getCityList(String provincePath) {
		Map<String, Object> params = new HashMap<>();

		params.put(VAR_TABLE_NAME, getTableName());
		params.put("brandPath", provincePath);

		return selectList("getTreeBranchList", params);
    }
    
    @Override
    public List<City> getAreaList(String cityPath) {
		Map<String, Object> params = new HashMap<>();

		params.put(VAR_TABLE_NAME, getTableName());
		params.put("velseriesPath", cityPath);

		return selectList("getTreeLeafList", params);
    }

    @Override
    public List<City> getCityAreaList(String cityCode, String vehicleCode, 
            List<String> dealerCodesInclude ){
        
        
        
        Map<String, Object> params = new HashMap<>();

        params.put(VAR_TABLE_NAME, getTableName());
        params.put("cityCode", cityCode);
        params.put("vehicleCode", vehicleCode);

        if( dealerCodesInclude != null ) {
            if( dealerCodesInclude.isEmpty() ) {
                return new ArrayList<>();
            }else {
                params.put( "dealerCodesInclude", dealerCodesInclude );
            }
        }
        
        return selectList( "getDealerAreaList", params);

    }
    

    @Override
    public List<City> getCityByCodeList(List<String> code) {
		Map<String, Object> params = new HashMap<>();

		params.put(VAR_TABLE_NAME, getTableName());
		params.put("code", code);

		return selectList("getTreeNodeByCodeList", params);
    }

	@Override
	public List<City> getAllCityList() {
		Map<String, Object> params = new HashMap<>();

		params.put(VAR_TABLE_NAME, getTableName());

		return selectList("getAllCityList", params);
	}

    @Override
    public City getCityByName(String name) {
        Map<String, Object> params = new HashMap<>();

        params.put(VAR_TABLE_NAME, getTableName());
        params.put("name", name);
        
        return selectOne( "getCityByName", params );
        
    }

	@Override
	public int insertCity(City city) {

		return insert("insertSelective", city);

	}


    @Override
    public int updateCity(City city) {
        
        return update( "updateCity", city );
        
    }
    
}
