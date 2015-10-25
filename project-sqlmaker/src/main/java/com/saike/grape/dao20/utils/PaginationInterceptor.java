package com.saike.grape.dao20.utils;

import java.sql.Connection;
import java.util.Properties;

import org.apache.ibatis.executor.statement.StatementHandler;
import org.apache.ibatis.plugin.Interceptor;
import org.apache.ibatis.plugin.Intercepts;
import org.apache.ibatis.plugin.Signature;
import org.apache.ibatis.plugin.Invocation;
import org.apache.ibatis.plugin.Plugin;
import org.apache.ibatis.reflection.MetaObject;
import org.apache.ibatis.reflection.factory.DefaultObjectFactory;
import org.apache.ibatis.reflection.factory.ObjectFactory;
import org.apache.ibatis.reflection.wrapper.DefaultObjectWrapperFactory;
import org.apache.ibatis.reflection.wrapper.ObjectWrapperFactory;
import org.apache.ibatis.session.RowBounds;

/**
 * Mybatis物理分页拦截类
 * <br/>（方法来自于网络资源及V1.1）
 * 
 * @author zeng wei
 * @version 2.0
 *
 */
@Intercepts({
    @Signature(type = StatementHandler.class, 
            method = "prepare", args={ Connection.class } )
})
public class PaginationInterceptor implements Interceptor {

    private ObjectFactory objectFactory = new DefaultObjectFactory();
    private ObjectWrapperFactory objectWrapperFactory =
            new DefaultObjectWrapperFactory();
    
    @Override
    public Object intercept(Invocation invocation) throws Throwable {
        StatementHandler statementHandler = 
                (StatementHandler)invocation.getTarget();  
        
        MetaObject metaStatementHandler = MetaObject.forObject( 
                statementHandler, objectFactory, objectWrapperFactory );    
            
        RowBounds rowBounds = 
           ( RowBounds )metaStatementHandler.getValue( "delegate.rowBounds" ); 
        
        if( rowBounds == null || rowBounds == RowBounds.DEFAULT ){    
            return invocation.proceed();
        }
        
        String originalSql = ( String )metaStatementHandler
                        .getValue( "delegate.boundSql.sql" );
        
        String boundSql = originalSql 
             + " limit " + rowBounds.getOffset() + "," + rowBounds.getLimit();
        
        metaStatementHandler.setValue( "delegate.boundSql.sql", boundSql );
        metaStatementHandler.setValue( "delegate.rowBounds.offset", 
                RowBounds.NO_ROW_OFFSET );    
        metaStatementHandler.setValue( "delegate.rowBounds.limit", 
                RowBounds.NO_ROW_LIMIT );
        
        return invocation.proceed();
    }

    @Override
    public Object plugin(Object target) {
        return Plugin.wrap( target, this );
    }

    @Override
    public void setProperties(Properties properties) {
        // TODO Auto-generated method stub
        
    }

}
