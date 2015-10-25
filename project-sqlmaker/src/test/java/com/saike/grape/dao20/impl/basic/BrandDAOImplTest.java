package com.saike.grape.dao20.impl.basic;

import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertTrue;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.junit.BeforeClass;
import org.junit.Test;

import com.saike.grape.dao20.GrapeDAO20Test;
import com.saike.grape.dao20.api.basic.BrandDAO;
import com.saike.grape.dao20.entity.Brand;
import com.saike.grape.dao20.utils.DatetimeUtils;
import com.saike.grape.dao20.utils.GrapeDAOUtils;

public class BrandDAOImplTest extends GrapeDAO20Test {

    @Resource
    BrandDAO brandDAO;

    private static String UUID = "";

    @BeforeClass
    public static void createUUID() {
        UUID = GrapeDAOUtils.uuid();
    }

    @Test
    public void insertBrandTest() {
        Brand brand = new Brand();
        brand.setCode(UUID);
        brand.setName("测试品牌");
        brand.setLevel(5);
        brand.setParentCode(UUID);
        brand.setFullPath("null");
        brand.setDescription("测试品牌");
        brand.setActived(true);
        brand.setDeleted(false);
        brand.setCreatedDatetime(DatetimeUtils
                .parseTimestamp("2014-09-05 10:40:20"));
        brand.setUpdatedDatetime(DatetimeUtils
                .parseTimestamp("2014-09-05 13:40:20"));

        int result = brandDAO.insert(brand);
        assertTrue(result >= 0);
    }

    @Test
    public void getBrandListTest() {

        List<Brand> brandList = brandDAO.getBrandList();

        assertTrue(brandList.size() > 0);
    }

    @Test
    public void getBrandByCodeTest() {
        // String[] code = {"RW-350","RW-550","RW-750"};
        List<String> code = new ArrayList<>();
        code.add("RW-350");
        code.add("RW-550");
        code.add("RW-750");

        List<Brand> list = brandDAO.getBrandByCodeList(code);
        assertNotNull(list);
    }

    // @Test
    public void updateBrandTest() {
        Brand brand = new Brand();
        brand.setCode(UUID);
        brand.setName("品牌");
        brand.setLevel(5);
        brand.setParentCode(UUID);
        brand.setFullPath("null");
        brand.setDescription("品牌");
        brand.setActived(false);
        brand.setDeleted(false);

        brand.setUpdatedDatetime(DatetimeUtils
                .parseTimestamp("2014-09-05 13:40:20"));
        brand.setCreatedDatetime(DatetimeUtils
                .parseTimestamp("2014-09-06 13:40:20"));
        int result = brandDAO.updateBrand(brand);

        assertTrue(result >= 0);
    }

    @Test
    public void deleteByCodeTest() {
        int result = brandDAO.deleteByCode(UUID);
        assertTrue(result >= 0);
    }

}
