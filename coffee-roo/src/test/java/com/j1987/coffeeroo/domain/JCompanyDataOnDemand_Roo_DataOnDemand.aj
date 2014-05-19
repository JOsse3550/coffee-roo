// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.j1987.coffeeroo.domain;

import com.j1987.coffeeroo.domain.JCompany;
import com.j1987.coffeeroo.domain.JCompanyDataOnDemand;
import java.math.BigDecimal;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.springframework.stereotype.Component;

privileged aspect JCompanyDataOnDemand_Roo_DataOnDemand {
    
    declare @type: JCompanyDataOnDemand: @Component;
    
    private Random JCompanyDataOnDemand.rnd = new SecureRandom();
    
    private List<JCompany> JCompanyDataOnDemand.data;
    
    public JCompany JCompanyDataOnDemand.getNewTransientJCompany(int index) {
        JCompany obj = new JCompany();
        setCocoaPrice(obj, index);
        setCoffeePrice(obj, index);
        setDescription(obj, index);
        setName(obj, index);
        setNumberCC(obj, index);
        setTaxCenter(obj, index);
        setTaxationRegime(obj, index);
        return obj;
    }
    
    public void JCompanyDataOnDemand.setCocoaPrice(JCompany obj, int index) {
        BigDecimal cocoaPrice = BigDecimal.valueOf(index);
        obj.setCocoaPrice(cocoaPrice);
    }
    
    public void JCompanyDataOnDemand.setCoffeePrice(JCompany obj, int index) {
        BigDecimal coffeePrice = BigDecimal.valueOf(index);
        obj.setCoffeePrice(coffeePrice);
    }
    
    public void JCompanyDataOnDemand.setDescription(JCompany obj, int index) {
        String description = "description_" + index;
        obj.setDescription(description);
    }
    
    public void JCompanyDataOnDemand.setName(JCompany obj, int index) {
        String name = "name_" + index;
        obj.setName(name);
    }
    
    public void JCompanyDataOnDemand.setNumberCC(JCompany obj, int index) {
        String numberCC = "numberCC_" + index;
        obj.setNumberCC(numberCC);
    }
    
    public void JCompanyDataOnDemand.setTaxCenter(JCompany obj, int index) {
        String taxCenter = "taxCenter_" + index;
        obj.setTaxCenter(taxCenter);
    }
    
    public void JCompanyDataOnDemand.setTaxationRegime(JCompany obj, int index) {
        String taxationRegime = "taxationRegime_" + index;
        obj.setTaxationRegime(taxationRegime);
    }
    
    public JCompany JCompanyDataOnDemand.getSpecificJCompany(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        JCompany obj = data.get(index);
        Long id = obj.getId();
        return JCompany.findJCompany(id);
    }
    
    public JCompany JCompanyDataOnDemand.getRandomJCompany() {
        init();
        JCompany obj = data.get(rnd.nextInt(data.size()));
        Long id = obj.getId();
        return JCompany.findJCompany(id);
    }
    
    public boolean JCompanyDataOnDemand.modifyJCompany(JCompany obj) {
        return false;
    }
    
    public void JCompanyDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = JCompany.findJCompanyEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'JCompany' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<JCompany>();
        for (int i = 0; i < 10; i++) {
            JCompany obj = getNewTransientJCompany(i);
            try {
                obj.persist();
            } catch (final ConstraintViolationException e) {
                final StringBuilder msg = new StringBuilder();
                for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                    final ConstraintViolation<?> cv = iter.next();
                    msg.append("[").append(cv.getRootBean().getClass().getName()).append(".").append(cv.getPropertyPath()).append(": ").append(cv.getMessage()).append(" (invalid value = ").append(cv.getInvalidValue()).append(")").append("]");
                }
                throw new IllegalStateException(msg.toString(), e);
            }
            obj.flush();
            data.add(obj);
        }
    }
    
}
