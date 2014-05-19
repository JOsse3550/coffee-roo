package com.j1987.coffeeroo.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

import javax.persistence.Column;
import javax.validation.constraints.NotNull;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(table = "J_FACTORY")
public class JFactory {

    /**
     */
    @NotNull
    @Column(unique = true)
    private String code;

    /**
     */
    @NotNull
    private String name;
    
    /**
     */
    private String description;
}
