package com.saike.grape.dao20.datas.transfer;

import java.sql.Connection;

public interface Transfer {

    public void transfer(Connection srcConn);

    public void postTransfer(Connection strConn);
}
