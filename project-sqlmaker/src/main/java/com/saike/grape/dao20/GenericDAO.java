package com.saike.grape.dao20;

import java.util.List;

import com.saike.grape.dao20.entity.BaseEntity;

public interface GenericDAO<E extends BaseEntity> {
    
    List<E> selectAll();
    
    E findById( Long id );
    
    E findByCode( String code );
    
    /**
     * 通过id查询实体对象
     * 
     * @param id    实体对象id
     * @param ignoreFlag 为true时忽略“actived=true and deleted=false” 条件判断；
     *                   反之false则不忽略
     * @return 
     */
    E findById( Long id, boolean ignoreFlag );
    
    /**
     * 通过code查询实体对象
     * 
     * @param code    实体对象code
     * @param ignoreFlag 为true时忽略“actived=true and deleted=false” 条件判断；
     *                   反之false则不忽略
     * @return 
     */
    E findByCode( String code, boolean ignoreFlag );
    
    List<E> findByCode( List<String> codes );
    
    int insert( E entity );
    
    void insert( List<E> entities );
    
    int update( E entity );
    
    void update( List<E> entities );
    
    int deleteById( Long id );
    
    int deleteByCode( String code );
    
    int delete( E entity );
    
    void delete( List<E> entities );

    int deletePhysicalByIdList(List<String> idList);

    int deletePhysicalByCodeList(List<String> codeList);
    
    int deleteByIdList(List<String> idList);

    int deleteByCodeList(List<String> codeList);


}
