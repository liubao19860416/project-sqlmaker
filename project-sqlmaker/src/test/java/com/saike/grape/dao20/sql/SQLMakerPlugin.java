package com.saike.grape.dao20.sql;

import org.apache.velocity.Template;
import org.apache.velocity.VelocityContext;

/**
 */
public interface SQLMakerPlugin {

    boolean isSupported(String templateName, Template tpl, VelocityContext vtx);

    boolean beforeMakeWithTemplate(String templateName, Template tpl,
            VelocityContext vtx);

}
