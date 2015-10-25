package com.saike.grape.dao20.impl.basic;

import com.saike.grape.dao20.GrapeDAO20Test;
import com.saike.grape.dao20.api.basic.CityDAO;
import com.saike.grape.dao20.entity.City;
import com.saike.grape.dao20.utils.DatetimeUtils;
import com.saike.grape.dao20.utils.GrapeDAOUtils;
import org.junit.BeforeClass;
import org.junit.Test;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertTrue;

public class CityDAOImplTest extends GrapeDAO20Test {

    @Resource
    CityDAO cityDao;

    private static String UUID = "";

    @BeforeClass
    public static void createUUID() {
        UUID = GrapeDAOUtils.uuid();
    }

    @Test
    public void getCityListTest() {
        List<City> cityList = cityDao.getCityList();
        assertNotNull(cityList);
    }

    @Test
    public void getCityByNameTest() {
        City city = cityDao.getCityByName("上海市");
        assertNotNull(city);
    }

    @Test
    public void insertCityTest() {
        City city = new City();
        city.setCode(UUID);
        city.setName("测试城市");
        city.setLevel(5);
        city.setParentCode(UUID);
        city.setFullPath("null");
        city.setDescription("测试城市");
        city.setActived(true);
        city.setDeleted(false);
        city.setCreatedDatetime(DatetimeUtils
                .parseTimestamp("2014-09-05 10:40:20"));
        city.setUpdatedDatetime(DatetimeUtils
                .parseTimestamp("2014-09-05 13:40:20"));

        int result = cityDao.insertCity(city);
        assertTrue(result >= 0);
    }

    @Test
    public void getDealerAreaByCodeListTest() {
        List<City> cityList = cityDao.getCityAreaList("310100", null, null);
        assertNotNull(cityList);
        assertTrue(cityList.size() > 0);

        List<String> dealerCodesInclude = new ArrayList<>();
        dealerCodesInclude.add("256");

        cityList = cityDao.getCityAreaList("310100", "RW-350---15T",
                dealerCodesInclude);
        assertNotNull(cityList);
        assertTrue(cityList.size() > 0);
    }

    @Test
    public void getCityByCodeTest() {
        // String[] code = {"310100","320500","510100"};
        List<String> code = new ArrayList<>();
        code.add("310100");
        code.add("320500");
        code.add("510100");

        List<City> list = cityDao.getCityByCodeList(code);
        assertNotNull(list);
    }

    @Test
    public void updateCityTest() {
        City city = new City();
        city.setCode(UUID);
        city.setName("城市");
        city.setLevel(5);
        city.setParentCode(UUID);
        city.setFullPath("null");
        city.setDescription("城市");

        city.setUpdatedDatetime(DatetimeUtils
                .parseTimestamp("2014-09-05 14:40:20"));
        int result = cityDao.updateCity(city);
        assertTrue(result >= 0);
    }

    @Test
    public void testSelectAll() {
        List<City> list = cityDao.selectAll();
        assertNotNull(list);
        assertTrue(list.size() >= 1);
    }
}
