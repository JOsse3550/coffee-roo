// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.j1987.coffeeroo.domain;

import com.j1987.coffeeroo.domain.JCoffeeAnalysis;
import com.j1987.coffeeroo.domain.JSubmissionForApproval;
import java.util.Date;
import java.util.Set;

privileged aspect JSubmissionForApproval_Roo_JavaBean {
    
    public String JSubmissionForApproval.getReference() {
        return this.reference;
    }
    
    public void JSubmissionForApproval.setReference(String reference) {
        this.reference = reference;
    }
    
    public String JSubmissionForApproval.getDescription() {
        return this.description;
    }
    
    public void JSubmissionForApproval.setDescription(String description) {
        this.description = description;
    }
    
    public Date JSubmissionForApproval.getCreationDate() {
        return this.creationDate;
    }
    
    public void JSubmissionForApproval.setCreationDate(Date creationDate) {
        this.creationDate = creationDate;
    }
    
    public String JSubmissionForApproval.getCreatedBy() {
        return this.createdBy;
    }
    
    public void JSubmissionForApproval.setCreatedBy(String createdBy) {
        this.createdBy = createdBy;
    }
    
    public Set<JCoffeeAnalysis> JSubmissionForApproval.getAnalyzesCoffee() {
        return this.analyzesCoffee;
    }
    
    public void JSubmissionForApproval.setAnalyzesCoffee(Set<JCoffeeAnalysis> analyzesCoffee) {
        this.analyzesCoffee = analyzesCoffee;
    }
    
}
