package com.j1987.coffeeroo.domain;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.ManyToMany;
import javax.validation.constraints.NotNull;

import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(table = "J_ROLE")
public class JRole {

    /**
     */
    @NotNull
    private String name;

    /**
     */
    private String description;
    
    /**
     */
    @ManyToMany
    private Set<JUser> users = new HashSet<JUser>();
}
