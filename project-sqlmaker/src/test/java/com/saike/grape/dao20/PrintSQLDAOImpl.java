package com.saike.grape.dao20;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.saike.grape.dao20.entity.BaseEntity;
import com.saike.grape.dao20.utils.DatetimeUtils;

/**
 * 只用來測試當SQL 出現錯誤時是否打印出完整的SQL
 */
@Repository
public class PrintSQLDAOImpl extends
        GenericDAOBatisImpl<BaseEntity, PrintSQLDAOImpl> implements PrintSQLDAO {

    @Override
    public int insertObj() {
        Map<String, Object> param = new HashMap<>();
        List<String> fields = new ArrayList<>();
        fields.add("code");
        fields.add("id");
        fields.add("createdDatetime");
        List<List<Object>> values = new ArrayList<>();
        List<Object> vs = new ArrayList<>();
        vs.add("212eee");
        vs.add("2111");
        vs.add(DatetimeUtils.currentTimestamp());
        values.add(vs);
        param.put("fields", fields);
        param.put("values", values);
        return this.insert("testBatchInsert", param);
    }

    @Override
    public int updateObj() {
        Map<String, Object> param = new HashMap<>();
        param.put("id", 2121);
        return this.update("testDeleteById", param);
    }

    @Override
    public int deleteObj() {
        Map<String, Object> param = new HashMap<>();
        List<String> codeList = new ArrayList<>();
        codeList.add("23123444");
        codeList.add("ertertert");
        codeList.add("34234qwqw");
        codeList.add("6576fgdfg");
        param.put("codeList", codeList);
        return this.getSqlSession().delete("testDeletePhysicalByCodeList",
                param);
    }

    @Override
    public BaseEntity findObj() {
        Map<String, Object> param = new HashMap<>();
        param.put("id", 123);
        return this.selectOne("testFindById", param);
    }

}
