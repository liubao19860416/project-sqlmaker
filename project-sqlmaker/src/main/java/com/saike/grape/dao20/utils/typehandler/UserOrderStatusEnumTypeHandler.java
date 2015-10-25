package com.saike.grape.dao20.utils.typehandler;

import com.saike.grape.dao20.utils.Constants.OrderStatus;

/**
 * 
 * @Author lishen
 * @Company Saike
 * @Version V2.0
 * @date 2014年9月12日
 */
public class UserOrderStatusEnumTypeHandler 
        extends StringValueEnumTypeHandler<OrderStatus> {

    public UserOrderStatusEnumTypeHandler() {
        
        super( OrderStatus.class );
    }

}
