// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.j1987.coffeeroo.domain;

import com.j1987.coffeeroo.domain.JCoffeeAnalysis;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Version;

privileged aspect JCoffeeAnalysis_Roo_Jpa_Entity {
    
    declare @type: JCoffeeAnalysis: @Entity;
    
    declare @type: JCoffeeAnalysis: @Table(name = "J_COFFEE_ANALYSIS");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long JCoffeeAnalysis.id;
    
    @Version
    @Column(name = "version")
    private Integer JCoffeeAnalysis.version;
    
    public Long JCoffeeAnalysis.getId() {
        return this.id;
    }
    
    public void JCoffeeAnalysis.setId(Long id) {
        this.id = id;
    }
    
    public Integer JCoffeeAnalysis.getVersion() {
        return this.version;
    }
    
    public void JCoffeeAnalysis.setVersion(Integer version) {
        this.version = version;
    }
    
}
