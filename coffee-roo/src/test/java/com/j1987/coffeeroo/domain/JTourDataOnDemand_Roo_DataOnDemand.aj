// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.j1987.coffeeroo.domain;

import com.j1987.coffeeroo.domain.JTour;
import com.j1987.coffeeroo.domain.JTourDataOnDemand;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.springframework.stereotype.Component;

privileged aspect JTourDataOnDemand_Roo_DataOnDemand {
    
    declare @type: JTourDataOnDemand: @Component;
    
    private Random JTourDataOnDemand.rnd = new SecureRandom();
    
    private List<JTour> JTourDataOnDemand.data;
    
    public JTour JTourDataOnDemand.getNewTransientJTour(int index) {
        JTour obj = new JTour();
        setDescription(obj, index);
        setName(obj, index);
        return obj;
    }
    
    public void JTourDataOnDemand.setDescription(JTour obj, int index) {
        String description = "description_" + index;
        obj.setDescription(description);
    }
    
    public void JTourDataOnDemand.setName(JTour obj, int index) {
        String name = "name_" + index;
        obj.setName(name);
    }
    
    public JTour JTourDataOnDemand.getSpecificJTour(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        JTour obj = data.get(index);
        Long id = obj.getId();
        return JTour.findJTour(id);
    }
    
    public JTour JTourDataOnDemand.getRandomJTour() {
        init();
        JTour obj = data.get(rnd.nextInt(data.size()));
        Long id = obj.getId();
        return JTour.findJTour(id);
    }
    
    public boolean JTourDataOnDemand.modifyJTour(JTour obj) {
        return false;
    }
    
    public void JTourDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = JTour.findJTourEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'JTour' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<JTour>();
        for (int i = 0; i < 10; i++) {
            JTour obj = getNewTransientJTour(i);
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