package com.saike.grape.dao20;

import com.saike.grape.dao20.entity.BaseEntity;

public abstract class AbstractTestDAO<E extends BaseEntity, T extends AbstractTestDAO<E, T>>
        extends GenericDAOBatisImpl<E, T> {

}
