package com.saike.grape.dao20.datas.transfer;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.PostConstruct;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.saike.grape.dao20.utils.DatetimeUtils;

public abstract class AbstractTransfer extends SqlSessionDaoSupport implements
        Transfer {

    private static final Logger logger = LoggerFactory
            .getLogger(AbstractTransfer.class);

    public static final String SH_CITY_CODE = "310100";

    protected static final Timestamp createdDatetime = DatetimeUtils
            .currentTimestamp();

    @Autowired
    private SqlSessionFactory sqlSessionFactory;

    public AbstractTransfer() {
    }

    @PostConstruct
    public void init() {
        super.setSqlSessionFactory(sqlSessionFactory);
    }

    public void postTransfer(Connection strConn) {
    }

    protected Map<String, Object> newParamsMap() {
        Map<String, Object> params = new HashMap<>();
        params.put("createdDatetime", createdDatetime);
        params.put("updatedDatetime", createdDatetime);
        return params;
    }

    protected void closeStatement(Statement st) {
        if (st != null) {
            try {
                st.close();
            } catch (Exception ex) {
                logger.error("closeStatement exception: ", ex);
            }
        }
    }

    protected void closeResultSet(ResultSet rs) {
        if (rs != null) {
            try {
                rs.close();
            } catch (Exception ex) {
                logger.error("closeResultSet exception: ", ex);
            }
        }
    }

}
