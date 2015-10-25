package com.saike.grape.dao20.utils.typehandler;

import com.saike.grape.dao20.utils.Constants.Gear;


/**
 * 车挡枚举类型转换类
 * 
 * @author zeng wei
 * @version 2.0
 *
 */
public class GearEnumTypeHandler 
    extends StringValueEnumTypeHandler<Gear>  {

    public GearEnumTypeHandler() {
        super( Gear.class );
    }

}
