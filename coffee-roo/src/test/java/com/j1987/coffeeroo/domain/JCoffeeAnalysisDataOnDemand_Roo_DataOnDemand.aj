// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.j1987.coffeeroo.domain;

import com.j1987.coffeeroo.domain.JCoffeeAnalysis;
import com.j1987.coffeeroo.domain.JCoffeeAnalysisDataOnDemand;
import com.j1987.coffeeroo.domain.JDealerDataOnDemand;
import com.j1987.coffeeroo.domain.JExporterDataOnDemand;
import com.j1987.coffeeroo.domain.JFactoryDataOnDemand;
import com.j1987.coffeeroo.domain.JLocalizationDataOnDemand;
import com.j1987.coffeeroo.domain.JSupplierDataOnDemand;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

privileged aspect JCoffeeAnalysisDataOnDemand_Roo_DataOnDemand {
    
    declare @type: JCoffeeAnalysisDataOnDemand: @Component;
    
    private Random JCoffeeAnalysisDataOnDemand.rnd = new SecureRandom();
    
    private List<JCoffeeAnalysis> JCoffeeAnalysisDataOnDemand.data;
    
    @Autowired
    JDealerDataOnDemand JCoffeeAnalysisDataOnDemand.jDealerDataOnDemand;
    
    @Autowired
    JExporterDataOnDemand JCoffeeAnalysisDataOnDemand.jExporterDataOnDemand;
    
    @Autowired
    JFactoryDataOnDemand JCoffeeAnalysisDataOnDemand.jFactoryDataOnDemand;
    
    @Autowired
    JLocalizationDataOnDemand JCoffeeAnalysisDataOnDemand.jLocalizationDataOnDemand;
    
    @Autowired
    JSupplierDataOnDemand JCoffeeAnalysisDataOnDemand.jSupplierDataOnDemand;
    
    public JCoffeeAnalysis JCoffeeAnalysisDataOnDemand.getNewTransientJCoffeeAnalysis(int index) {
        JCoffeeAnalysis obj = new JCoffeeAnalysis();
        setCreatedBy(obj, index);
        setCreationDate(obj, index);
        setDateOfAnalysis(obj, index);
        setEndTime(obj, index);
        setModificationDate(obj, index);
        setModifiedBy(obj, index);
        setNetWeightOfProductAccepted(obj, index);
        setNumberLading(obj, index);
        setNumberOfBagAllowed(obj, index);
        setNumberSAIGIC(obj, index);
        setSampleCode(obj, index);
        setStartTime(obj, index);
        setTotalOfBagPushed(obj, index);
        setTotalOfReportedBags(obj, index);
        setTruckNumber(obj, index);
        return obj;
    }
    
    public void JCoffeeAnalysisDataOnDemand.setCreatedBy(JCoffeeAnalysis obj, int index) {
        String createdBy = "createdBy_" + index;
        obj.setCreatedBy(createdBy);
    }
    
    public void JCoffeeAnalysisDataOnDemand.setCreationDate(JCoffeeAnalysis obj, int index) {
        Date creationDate = new GregorianCalendar(Calendar.getInstance().get(Calendar.YEAR), Calendar.getInstance().get(Calendar.MONTH), Calendar.getInstance().get(Calendar.DAY_OF_MONTH), Calendar.getInstance().get(Calendar.HOUR_OF_DAY), Calendar.getInstance().get(Calendar.MINUTE), Calendar.getInstance().get(Calendar.SECOND) + new Double(Math.random() * 1000).intValue()).getTime();
        obj.setCreationDate(creationDate);
    }
    
    public void JCoffeeAnalysisDataOnDemand.setDateOfAnalysis(JCoffeeAnalysis obj, int index) {
        Date dateOfAnalysis = new GregorianCalendar(Calendar.getInstance().get(Calendar.YEAR), Calendar.getInstance().get(Calendar.MONTH), Calendar.getInstance().get(Calendar.DAY_OF_MONTH), Calendar.getInstance().get(Calendar.HOUR_OF_DAY), Calendar.getInstance().get(Calendar.MINUTE), Calendar.getInstance().get(Calendar.SECOND) + new Double(Math.random() * 1000).intValue()).getTime();
        obj.setDateOfAnalysis(dateOfAnalysis);
    }
    
    public void JCoffeeAnalysisDataOnDemand.setEndTime(JCoffeeAnalysis obj, int index) {
        Date endTime = new GregorianCalendar(Calendar.getInstance().get(Calendar.YEAR), Calendar.getInstance().get(Calendar.MONTH), Calendar.getInstance().get(Calendar.DAY_OF_MONTH), Calendar.getInstance().get(Calendar.HOUR_OF_DAY), Calendar.getInstance().get(Calendar.MINUTE), Calendar.getInstance().get(Calendar.SECOND) + new Double(Math.random() * 1000).intValue()).getTime();
        obj.setEndTime(endTime);
    }
    
    public void JCoffeeAnalysisDataOnDemand.setModificationDate(JCoffeeAnalysis obj, int index) {
        Date modificationDate = new GregorianCalendar(Calendar.getInstance().get(Calendar.YEAR), Calendar.getInstance().get(Calendar.MONTH), Calendar.getInstance().get(Calendar.DAY_OF_MONTH), Calendar.getInstance().get(Calendar.HOUR_OF_DAY), Calendar.getInstance().get(Calendar.MINUTE), Calendar.getInstance().get(Calendar.SECOND) + new Double(Math.random() * 1000).intValue()).getTime();
        obj.setModificationDate(modificationDate);
    }
    
    public void JCoffeeAnalysisDataOnDemand.setModifiedBy(JCoffeeAnalysis obj, int index) {
        String modifiedBy = "modifiedBy_" + index;
        obj.setModifiedBy(modifiedBy);
    }
    
    public void JCoffeeAnalysisDataOnDemand.setNetWeightOfProductAccepted(JCoffeeAnalysis obj, int index) {
        BigDecimal netWeightOfProductAccepted = BigDecimal.valueOf(index);
        obj.setNetWeightOfProductAccepted(netWeightOfProductAccepted);
    }
    
    public void JCoffeeAnalysisDataOnDemand.setNumberLading(JCoffeeAnalysis obj, int index) {
        String numberLading = "numberLading_" + index;
        obj.setNumberLading(numberLading);
    }
    
    public void JCoffeeAnalysisDataOnDemand.setNumberOfBagAllowed(JCoffeeAnalysis obj, int index) {
        BigInteger numberOfBagAllowed = BigInteger.valueOf(index);
        obj.setNumberOfBagAllowed(numberOfBagAllowed);
    }
    
    public void JCoffeeAnalysisDataOnDemand.setNumberSAIGIC(JCoffeeAnalysis obj, int index) {
        String numberSAIGIC = "numberSAIGIC_" + index;
        obj.setNumberSAIGIC(numberSAIGIC);
    }
    
    public void JCoffeeAnalysisDataOnDemand.setSampleCode(JCoffeeAnalysis obj, int index) {
        String sampleCode = "sampleCode_" + index;
        obj.setSampleCode(sampleCode);
    }
    
    public void JCoffeeAnalysisDataOnDemand.setStartTime(JCoffeeAnalysis obj, int index) {
        Date startTime = new GregorianCalendar(Calendar.getInstance().get(Calendar.YEAR), Calendar.getInstance().get(Calendar.MONTH), Calendar.getInstance().get(Calendar.DAY_OF_MONTH), Calendar.getInstance().get(Calendar.HOUR_OF_DAY), Calendar.getInstance().get(Calendar.MINUTE), Calendar.getInstance().get(Calendar.SECOND) + new Double(Math.random() * 1000).intValue()).getTime();
        obj.setStartTime(startTime);
    }
    
    public void JCoffeeAnalysisDataOnDemand.setTotalOfBagPushed(JCoffeeAnalysis obj, int index) {
        BigInteger totalOfBagPushed = BigInteger.valueOf(index);
        obj.setTotalOfBagPushed(totalOfBagPushed);
    }
    
    public void JCoffeeAnalysisDataOnDemand.setTotalOfReportedBags(JCoffeeAnalysis obj, int index) {
        BigInteger totalOfReportedBags = BigInteger.valueOf(index);
        obj.setTotalOfReportedBags(totalOfReportedBags);
    }
    
    public void JCoffeeAnalysisDataOnDemand.setTruckNumber(JCoffeeAnalysis obj, int index) {
        String truckNumber = "truckNumber_" + index;
        obj.setTruckNumber(truckNumber);
    }
    
    public JCoffeeAnalysis JCoffeeAnalysisDataOnDemand.getSpecificJCoffeeAnalysis(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        JCoffeeAnalysis obj = data.get(index);
        Long id = obj.getId();
        return JCoffeeAnalysis.findJCoffeeAnalysis(id);
    }
    
    public JCoffeeAnalysis JCoffeeAnalysisDataOnDemand.getRandomJCoffeeAnalysis() {
        init();
        JCoffeeAnalysis obj = data.get(rnd.nextInt(data.size()));
        Long id = obj.getId();
        return JCoffeeAnalysis.findJCoffeeAnalysis(id);
    }
    
    public boolean JCoffeeAnalysisDataOnDemand.modifyJCoffeeAnalysis(JCoffeeAnalysis obj) {
        return false;
    }
    
    public void JCoffeeAnalysisDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = JCoffeeAnalysis.findJCoffeeAnalysisEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'JCoffeeAnalysis' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<JCoffeeAnalysis>();
        for (int i = 0; i < 10; i++) {
            JCoffeeAnalysis obj = getNewTransientJCoffeeAnalysis(i);
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
