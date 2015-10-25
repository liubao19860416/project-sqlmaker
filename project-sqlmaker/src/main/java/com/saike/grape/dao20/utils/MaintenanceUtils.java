package com.saike.grape.dao20.utils;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.commons.collections.CollectionUtils;
import org.apache.commons.lang.StringUtils;


/**
 * 保养项目工具方法类
 * 
 * @author zeng wei
 * @version 2.0
 */
public final class MaintenanceUtils {

    private static final Pattern P_CODE = 
            Pattern.compile( "[a-zA-Z0-9\\-]{3}" );

    /**
     * 该方法用来拆分品牌或车辆编号
     * <br/>for example:
     * <br/>RW-550-s-MAT => [ "RW-", "550", "-s-", "MAT" ]
     * 
     * @param code 品牌或车辆编号
     * 
     * @return String[] 拆分后的编号数组
     */
    public static String[] splitCode( String code ) {
        if( code == null || "".equals( code ) ) {
            return new String[0];
        }
        
        int i = 0;
        List<String> ss = new ArrayList<>();
        Matcher m = P_CODE.matcher( code );
        while( m.find( i ) ) {
            ss.add( code.substring( m.start(), ( i = m.end() ) ) );
        }
        
        return ss.toArray( new String[]{ } );
    }
    
    /**
     * 该方法用来拆分品牌编号并添加通配符
     * <br/>for example:
     * <br/>RW-550-s- => 
     * [ "RW-*", "RW-550*", "RW-550-s-*" ]
     * 
     * @param brandCode 品牌编号
     * 
     * @return String[] 拆分后的编号加上通配符‘*’
     */
    public static String[] splitAndWildBrandCode( String brandCode ) {
        return splitAndWildCode( brandCode );
    }
    
    /**
     * 该方法用来拆分车辆品牌编号并添加通配符
     * <br/>for example:
     * <br/>RW-550-s-MAT => 
     * [ "RW-*", "RW-550*", "RW-550-s-*" ]
     * 
     * @param vehicleCode 车辆编号
     * 
     * @return String[] 拆分后的车辆品牌编号加上通配符‘*’
     */
    public static String[] splitAndWildVehicleCode( String vehicleCode ) {
        String[] ss = splitAndWildCode( vehicleCode );
        
        if( ss == null || ss.length <= 0 ) {
            return new String[0];
        }
        
        // discard the last one item
        String[] ss2 = new String[ ss.length - 1 ];
        
        System.arraycopy( ss, 0, ss2, 0, ss2.length );
        
        return ss2;
    }
    
    /**
     * 该方法用来拆分品牌或车辆编号并添加通配符
     * <br/>for example:
     * <br/>RW-550-s- => 
     * [ "RW-*", "RW-550*", "RW-550-s-*" ]
     * 
     * @param code 品牌或车辆编号
     * 
     * @return String[] 拆分后的编号加上通配符‘*’
     */
    public static String[] splitAndWildCode( String code ) {
        String[] ss = splitCode( code );
        String[] ss2 = new String[ ss.length ];
        String prefix = "";
        for( int i = 0; i < ss.length; i++ ) {
            prefix = prefix + ss[i];
            ss2[i] = prefix + Constants.CODE_WILDCARD;
        }
        
        return ss2;
    }
    
    public static String fitToScopeMatched( String scope, String code ) {
        return fitToScopeMatched( scope.split( Constants.CODE_SEPARATOR ), code );
    }
    
    public static String fitToScopeMatched( String[] scopes, String code ) {
        
        List<String> splitedCodes = new ArrayList<>();
        
        splitedCodes.addAll( Arrays.asList(
                MaintenanceUtils.splitAndWildVehicleCode( code ) ) );
        
        splitedCodes.add( Constants.FIT_TO_ALL );
        
        if( StringUtils.isNotEmpty( code ) ) {
            splitedCodes.add( code );
        }
        
        Collection<String> intersected = CollectionUtils.intersection( 
                splitedCodes, 
                Arrays.asList( scopes ) );
        
        if( intersected != null && intersected.size() > 0 ) {
            String maxLengthMatched = "";
            for( String s : intersected ) {
                if( s.length() > maxLengthMatched.length() ) {
                    maxLengthMatched = s;
                }
            }
            return maxLengthMatched;
        }
        
        return null;
    }
    
}
