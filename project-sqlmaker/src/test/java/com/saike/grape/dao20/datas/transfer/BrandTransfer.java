package com.saike.grape.dao20.datas.transfer;

import java.sql.Connection;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.saike.grape.dao20.api.basic.BrandDAO;

/**
 * 品牌数据导入
 */
@Repository
public class BrandTransfer extends AbstractTransfer {

    @Autowired
    BrandDAO brandDAO;

    private static final String NS = "datas.transfer.BrandTransferMapper.";

    @Override
    public void transfer(Connection srcConn) {
        Map<String, Object> params = newParamsMap();
        getSqlSession().insert(NS + "insertBrands", params);
    }

}
