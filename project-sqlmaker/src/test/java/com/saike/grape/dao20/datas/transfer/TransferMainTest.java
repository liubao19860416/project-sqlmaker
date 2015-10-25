package com.saike.grape.dao20.datas.transfer;

import static org.junit.Assert.*;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.saike.grape.dao20.GrapeDAO20Test;


public class TransferMainTest extends GrapeDAO20Test {

    @Autowired
    TransferMain transferMain;
        
    @Before
    public void setUp() throws Exception {
    }

    @After
    public void tearDown() throws Exception {
    }

    @Test
    public void test() {
        
    }

//    @Test
    public void testTransferDatas() {
        transferMain.transfer();
        assertTrue( true );
    }

}
