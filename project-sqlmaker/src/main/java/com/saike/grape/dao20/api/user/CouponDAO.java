package com.saike.grape.dao20.api.user;

import java.util.List;
import java.util.Map;

import com.saike.grape.dao20.GenericDAO;
import com.saike.grape.dao20.entity.Coupon;

/**
 * 保养券（规则）的DAO接口
 * 
 * @author Liubao
 * @Version 2.0
 */
public interface CouponDAO extends GenericDAO<Coupon> {
	
	/**
	 * 覆写的根据id查询，忽略active和deleted字段
	 */
	public Coupon findByID(Long id);
	
	/**
	 * 自定义的插入对象中非空属性的方法（拷贝数据库测试使用，完成后删除即可）
	 * @param coupon
	 * @return
	 */
    @Deprecated
	public Long insertBySelective(Coupon coupon);

	/**
	 *  根据查询条件（查询vo中不为空的属性），进行查询保养券（规则）信息列表
	 * @param couponPageQueryVO
	 * @return List<Coupon>
	 */
	public List<Coupon> selectAllCouponsByConditions(Map<String, Object> map,
	        Integer pageIndex, Integer pageSize);
	
	/**
	 *  根据查询条件（查询vo中不为空的属性），进行查询保养券（规则）信息列表数量
	 * @param coupone
	 * @return List<Coupon>
	 */
	public Long selectAllCouponsByConditionsCount(Map<String, Object> map);
	
    /**
    * 查询当前最新保养券是否是开启 状态
    */
    public String getCouponFlag();

    /**
     * 查询最新创建的保养券（新添加）
     */
    public Coupon selectLatestedCoupon();


}