package com.saike.grape.dao20.impl.user;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.saike.grape.dao20.GenericDAOBatisImpl;
import com.saike.grape.dao20.api.user.CouponDAO;
import com.saike.grape.dao20.entity.Coupon;

/**
 * 保养券的DAO接口的实现类
 * 
 * @author Liubao
 * @Version 2.0
 */
@Repository
public class CouponDAOImpl extends GenericDAOBatisImpl<Coupon, CouponDAOImpl>
		implements CouponDAO {

	private Logger logger = LoggerFactory.getLogger(CouponDAOImpl.class);
	
	
	@Override
	public Coupon findByID(Long id){
		return this.selectOne("findByID", id);
	}

	@Override
	public List<Coupon> selectAllCouponsByConditions(Map<String, Object> params,
			Integer pageIndex, Integer pageSize) {
	    if(params!=null){
            params.put(VAR_TABLE_NAME, this.getTableName());
        }
		return this.selectList("selectAllCouponsByConditions",
				params,pageIndex,pageSize);
	}

	@Override
	public Long selectAllCouponsByConditionsCount(Map<String, Object> params) {
	    if(params!=null){
	        params.put(VAR_TABLE_NAME, this.getTableName());
	    }
		return selectCount("selectAllCouponsByConditionsCount",params);
	}

	@Override
	@Deprecated
	public Long insertBySelective(Coupon coupon) {
//		params.put(VAR_TABLE_NAME,"t_coupon_new");
		return Long.parseLong(this.insert("insertBySelective", coupon)+"");
	}

	/**
    * 获取保养券当前状态
    */
    @Override
    public String getCouponFlag() {
        //long result = this.selectCount("getCouponFlag", null);
        //int result = this.getSqlSession().selectOne("getCouponFlag");
        //return result==1?"1":"0";
        String result = this.getSqlSession().selectOne("getCouponFlag");
        return result;
    }

    @Override
    public Coupon selectLatestedCoupon() {
        return this.selectOne("selectLatestedCoupon");
    }


}
