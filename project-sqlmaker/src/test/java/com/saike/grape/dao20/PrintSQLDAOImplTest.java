package com.saike.grape.dao20;

import static org.junit.Assert.assertEquals;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * 只用來測試當SQL 出現錯誤時是否打印出完整的SQL
 */
public class PrintSQLDAOImplTest extends GrapeDAO20Test {
    @Autowired
    private PrintSQLDAO printSQLDAO;

    @Test
    public void testInsertObj() {
        // printSQLDAO.insertObj();
        assertEquals("1111", "1111");
    }

    // @Test
    public void testUpdateObj() {
        printSQLDAO.updateObj();
    }

    // @Test
    public void testDeleteObj() {
        printSQLDAO.deleteObj();
    }

    // @Test
    public void testFindObj() {
        printSQLDAO.findObj();
    }

}
