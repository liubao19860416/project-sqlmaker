package com.saike.grape.dao20.impl.basic;

import com.saike.grape.dao20.GenericDAOBatisImpl;
import com.saike.grape.dao20.api.basic.BrandDAO;
import com.saike.grape.dao20.entity.Brand;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 品牌DAO实现类
 *
 * @Author Wang Tao
 * @Company Saike
 * @Version V2.0
 */

@Repository
public class BrandDAOImpl extends GenericDAOBatisImpl<Brand, BrandDAOImpl>
        implements BrandDAO {

    private static final Logger logger = 
            LoggerFactory.getLogger( BrandDAOImpl.class );
    
    @Override
    public List<Brand> getBrandList() {
		Map<String, Object> params = new HashMap<>();

		params.put(VAR_TABLE_NAME, getTableName());

		return selectList("getTreeNodeList", params);
    }

    @Override
    public List<Brand> getSubBrandList(String brandPath) {
		Map<String, Object> params = new HashMap<>();

		params.put(VAR_TABLE_NAME, getTableName());
		params.put( "brandPath", brandPath );

		return selectList( "getTreeBranchList", params );
    }

    @Override
    public List<Brand> getVelseriesList(String velseriesPath) {
		Map<String, Object> params = new HashMap<>();

		params.put(VAR_TABLE_NAME, getTableName());
		params.put( "velseriesPath", velseriesPath );

		return selectList( "getTreeLeafList", params );
    }

    @Override
    public List<Brand> getBrandByCodeList(List<String> code) {
		Map<String, Object> params = new HashMap<>();

		params.put(VAR_TABLE_NAME, getTableName());
		params.put( "code", code );

		return selectList( "getTreeNodeByCodeList", params );
    }

    @Override
    public int updateBrand( Brand brand) {
        
        return update( "updateBrand", brand );
        
    }

    @Override
    public List<Brand> getAll() {
        return this.selectList("getAll");
    }
    
    
}
