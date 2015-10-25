package com.saike.grape.dao20.impl.basic;

import static org.junit.Assert.*;
import java.util.List;

import javax.annotation.Resource;

import org.junit.Test;

import com.saike.grape.dao20.GrapeDAO20Test;
import com.saike.grape.dao20.api.basic.BrandDAO;
import com.saike.grape.dao20.api.basic.CityDAO;
import com.saike.grape.dao20.entity.Brand;
import com.saike.grape.dao20.entity.City;

public class TreeNodeDAOImplTest extends GrapeDAO20Test {

    @Resource
    BrandDAO brandDao;

    @Resource
    CityDAO cityDao;

    @Test
    public void getBrandListTest() {
        List<Brand> brandList = brandDao.getBrandList();
        assertNotNull(brandList);

    }

    // @Test
    public void getVelseriesListTest() {
        List<Brand> brandList = brandDao.getSubBrandList("pb56");
        assertNotNull(brandList);
        assertTrue(1 == brandList.size());

    }

    // @Test
    public void getVelmodelListTest() {
        List<Brand> brandList = brandDao.getVelseriesList("pb56-b81");
        assertNotNull(brandList);
    }

    @Test
    public void getProvinceListTest() {
        List<City> cityList = cityDao.getProvinceList();
        assertNotNull(cityList);
    }

    // @Test
    public void getCityListTest() {
        List<City> cityList = cityDao.getCityList("310000");
        assertNotNull(cityList);
        assertTrue(1 == cityList.size());
    }

    // @Test
    public void getAreaListTest() {
        List<City> cityList = cityDao.getAreaList("310100");
        assertNotNull(cityList);
    }

}
