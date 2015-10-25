package com.saike.grape.dao20.utils;

import java.util.HashMap;
import java.util.Map;

/**
 * 常量定义类
 * 
 * @author zeng wei
 * @version 2.0
 *
 */
public final class Constants {

    // hidden from instantiating
    private Constants() {}
    
    public static final String MAINTENANCE_SYS_OWNER = "sys";
    
    public static final String GENERAL_VEHICLE_CODE="general-criteria"; //通用车辆编号
    
    public static final String CODE_SEPARATOR=",";  //字段值分割符
    public static final String FULL_PAHT_CODE_SEPARATOR="/";  //字段值分割符
    
    public static final String DATETIME_PATTERN = "yyyy-MM-dd HH:mm:ss";
    public static final String DATE_PATTERN = "yyyy-MM-dd";

    public static final String HOUR_PATTERN = "HH:mm";
    
    public static final String CODE_WILDCARD = "*"; // 编号通配符
    
    public static final int MAINTENANCE_TYPE_NONE = 0;      // 无需保养
    public static final int MAINTENANCE_TYPE_LOW = 10;      // 小保 
    public static final int MAINTENANCE_TYPE_MEDIUM = 20;   // 大/小保
    public static final int MAINTENANCE_TYPE_HIGH = 30;     // 大保
    
    public static final int KM_MIN = 0;         // 最小公里数
    public static final int KM_MAX = 10000000;  // 最大公里数
    
    public static final String COLOR1_DEFAULT = "#BFFEA9";  // 默认色值1（浅色）
    public static final String COLOR2_DEFAULT = "#6CB153";  // 默认色值2（深色）
    
    public static final int DAYS_MIN = 0;       // 最小天数
    public static final int DAYS_MAX = 100000;  // 最大天数, ~270 years
    
    public static final float EMISSION_MIN = 0.0f;        // 最小排量
    public static final float EMISSION_MAX = 10000.0f;    // 最大排量
    
    public static final String FIT_TO_ALL = CODE_WILDCARD; // 适用所有范围
    
    public static final int DEFAULT_FREQUENCY = 7 ; //默认的模板的执行周期
    
    // boolean true 字符串表示
    public static final String BOOLEAN_TRUE_IN_STR = "1"; 
    
    // boolean false 字符串表示
    public static final String BOOLEAN_FALSE_IN_STR = "0";
    
    public static HashMap<String,String> weekMap = new HashMap<>();
    
    
    
    private static final Map<Class<? extends Enum<?>>, Enum<?>[]> 
               mapEnumTypes = new HashMap<>();
    
    static {
        mapEnumTypes.put( MaintenancePeriodUnit.class, 
                MaintenancePeriodUnit.class.getEnumConstants() );
        
        mapEnumTypes.put( SparePartGroupedSelectMode.class, 
                SparePartGroupedSelectMode.class.getEnumConstants() );
        
        mapEnumTypes.put( Gear.class, 
                Gear.class.getEnumConstants() );
        
        mapEnumTypes.put( OrderStatus.class, 
        		OrderStatus.class.getEnumConstants() );
        
        //用于门店详情分时折扣展示时排序
        weekMap.put("周1", "周一");
        weekMap.put("周2", "周二");
        weekMap.put("周3", "周三");
        weekMap.put("周4", "周四");
        weekMap.put("周5", "周五");
        weekMap.put("周6", "周六");
        weekMap.put("周7", "周日");
    }
            
    // 保养周期单位
    public static enum MaintenancePeriodUnit {
        NONE( "-" ),      // 非周期性
        KM( "km" ),       // 按公里数
        DAY( "day" );     // 按日期（天数）
        
        private String unit;
        
        private MaintenancePeriodUnit( String unit ) {
            this.unit = unit;
        }
        
        @Override
        public String toString() {
            return this.unit;
        }
    }
    
    // 配件选择模式
    public static enum SparePartGroupedSelectMode {
        MUST( "must" ),             // 必选
        CHECKED( "checked" ),       // 选中状态（可选）
        UNCHECKED( "unchecked" );   // 非选中状态（可选）
        
        private String selectMode;
        
        private SparePartGroupedSelectMode( String selectMode ) {
            this.selectMode = selectMode;
        }
        
        @Override
        public String toString() {
            return this.selectMode;
        }
    }
    
    // 车挡类型
    public static enum Gear {
        AUTO( "自动" ),                    // 自动
        MANUAL( "手动" ),                  // 手动
        MANUAL_PLUS_AUTO( "手自一体" ),    // 手自一体
        NA( "-" );                         // N/A 未知
        
        private String type;
        
        private Gear( String type ) {
            this.type = type;
        }
        
        @Override
        public String toString() {
            return this.type;
        }
    }
	public enum OrderStatus {
		UNCONFIRMED(1, "未确认",1), 
		CONFIRMED(2, "已确认",2), 
		REFUSED(3, "已拒绝",5), 
		FINISHED(9, "已完工",3), 
		KMUPDATED(11, "已更新公里数",4), 
		CANCELED(99, "已取消",6), 
		ERROR(404, "有错误",404);
		private String key;
		private int code;
		private int sort;

		OrderStatus(int code, String key,int sort) {
			this.key = key;
			this.code = code;
			this.sort = sort;
		}

		public int getSort() {
            return sort;
        }

        public void setSort(int sort) {
            this.sort = sort;
        }

        public String getKey() {
			return key;
		}

		public void setKey(String key) {
			this.key = key;
		}

		public int getCode() {
			return code;
		}

		public void setCode(int code) {
			this.code = code;
		}

		@Override
		public String toString() {
			return getKey();
		}

		public static OrderStatus getKey(int code) {
			OrderStatus[] os = OrderStatus.values();
			for (int i = 0; i < os.length; i++) {
				if (os[i].getCode() == code) {
					return os[i];
				}
			}
			return OrderStatus.ERROR;

		}

	}
    public static Enum<?> getEnumByValue( Class<? extends Enum<?>> enumClass, 
            String value ) {
        
        if( enumClass == null || ! enumClass.isEnum() ) {
            throw new IllegalArgumentException( 
                    "Argument enumClass is null!!" );
        }
        
        if( value == null || "".equals( value ) ) {
            return null;
        }
        
        for( Class<? extends Enum<?>> eclass : mapEnumTypes.keySet() ) {
            if( eclass.equals( enumClass ) ) {
                for( Enum<?> e : mapEnumTypes.get( eclass ) ) {
                    if( e.toString().equals( value ) ) {
                        return e;
                    }
                }
            }
        }
        
        throw new IllegalArgumentException( 
                "Enum class \"" + enumClass.getName() + "\""
                  + " with value \"" + value + "\""
                  + " is not supported!!" );
    }
    
}








