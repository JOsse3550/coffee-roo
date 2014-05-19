// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.j1987.coffeeroo.domain;

import com.j1987.coffeeroo.domain.JCompany;
import com.j1987.coffeeroo.domain.JFactory;
import com.j1987.coffeeroo.domain.JRole;
import com.j1987.coffeeroo.domain.JUser;
import java.util.List;

privileged aspect JUser_Roo_JavaBean {
    
    public String JUser.getUserName() {
        return this.userName;
    }
    
    public void JUser.setUserName(String userName) {
        this.userName = userName;
    }
    
    public String JUser.getFirstName() {
        return this.firstName;
    }
    
    public void JUser.setFirstName(String firstName) {
        this.firstName = firstName;
    }
    
    public String JUser.getLastName() {
        return this.lastName;
    }
    
    public void JUser.setLastName(String lastName) {
        this.lastName = lastName;
    }
    
    public String JUser.getPhoneNumber() {
        return this.phoneNumber;
    }
    
    public void JUser.setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }
    
    public String JUser.getEmail() {
        return this.email;
    }
    
    public void JUser.setEmail(String email) {
        this.email = email;
    }
    
    public String JUser.getRoleName() {
        return this.roleName;
    }
    
    public void JUser.setRoleName(String roleName) {
        this.roleName = roleName;
    }
    
    public String JUser.getActivityNames() {
        return this.activityNames;
    }
    
    public void JUser.setActivityNames(String activityNames) {
        this.activityNames = activityNames;
    }
    
    public List<JRole> JUser.getRoles() {
        return this.roles;
    }
    
    public void JUser.setRoles(List<JRole> roles) {
        this.roles = roles;
    }
    
    public List<JCompany> JUser.getCompanies() {
        return this.companies;
    }
    
    public void JUser.setCompanies(List<JCompany> companies) {
        this.companies = companies;
    }
    
    public List<JFactory> JUser.getFactories() {
        return this.factories;
    }
    
    public void JUser.setFactories(List<JFactory> factories) {
        this.factories = factories;
    }
    
    public String JUser.getPassword() {
        return this.password;
    }
    
    public void JUser.setPassword(String password) {
        this.password = password;
    }
    
    public String JUser.getConfirmPassword() {
        return this.confirmPassword;
    }
    
    public void JUser.setConfirmPassword(String confirmPassword) {
        this.confirmPassword = confirmPassword;
    }
    
}