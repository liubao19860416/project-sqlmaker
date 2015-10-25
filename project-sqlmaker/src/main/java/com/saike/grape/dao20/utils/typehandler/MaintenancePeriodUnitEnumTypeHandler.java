package com.saike.grape.dao20.utils.typehandler;

import com.saike.grape.dao20.utils.Constants.MaintenancePeriodUnit;

/**
 * Constants.MaintenancePeriodUnit枚举类型转换类
 * 
 * @author zengwei
 * @version 2.0
 * 
 * @see Constants.MaintenancePeriodUnit
 *
 */
public class MaintenancePeriodUnitEnumTypeHandler
        extends StringValueEnumTypeHandler<MaintenancePeriodUnit> {

    
    public MaintenancePeriodUnitEnumTypeHandler() {
        super( MaintenancePeriodUnit.class );
    }
}
