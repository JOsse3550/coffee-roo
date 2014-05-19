// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.j1987.coffeeroo.domain;

import com.j1987.coffeeroo.domain.JCoffeeAnalysis;
import com.j1987.coffeeroo.domain.JCoffeeAnalysisDataOnDemand;
import com.j1987.coffeeroo.domain.JCoffeeAnalysisIntegrationTest;
import java.util.Iterator;
import java.util.List;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

privileged aspect JCoffeeAnalysisIntegrationTest_Roo_IntegrationTest {
    
    declare @type: JCoffeeAnalysisIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: JCoffeeAnalysisIntegrationTest: @ContextConfiguration(locations = "classpath*:/META-INF/spring/applicationContext*.xml");
    
    declare @type: JCoffeeAnalysisIntegrationTest: @Transactional;
    
    @Autowired
    JCoffeeAnalysisDataOnDemand JCoffeeAnalysisIntegrationTest.dod;
    
    @Test
    public void JCoffeeAnalysisIntegrationTest.testCountJCoffeeAnalyses() {
        Assert.assertNotNull("Data on demand for 'JCoffeeAnalysis' failed to initialize correctly", dod.getRandomJCoffeeAnalysis());
        long count = JCoffeeAnalysis.countJCoffeeAnalyses();
        Assert.assertTrue("Counter for 'JCoffeeAnalysis' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void JCoffeeAnalysisIntegrationTest.testFindJCoffeeAnalysis() {
        JCoffeeAnalysis obj = dod.getRandomJCoffeeAnalysis();
        Assert.assertNotNull("Data on demand for 'JCoffeeAnalysis' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'JCoffeeAnalysis' failed to provide an identifier", id);
        obj = JCoffeeAnalysis.findJCoffeeAnalysis(id);
        Assert.assertNotNull("Find method for 'JCoffeeAnalysis' illegally returned null for id '" + id + "'", obj);
        Assert.assertEquals("Find method for 'JCoffeeAnalysis' returned the incorrect identifier", id, obj.getId());
    }
    
    @Test
    public void JCoffeeAnalysisIntegrationTest.testFindAllJCoffeeAnalyses() {
        Assert.assertNotNull("Data on demand for 'JCoffeeAnalysis' failed to initialize correctly", dod.getRandomJCoffeeAnalysis());
        long count = JCoffeeAnalysis.countJCoffeeAnalyses();
        Assert.assertTrue("Too expensive to perform a find all test for 'JCoffeeAnalysis', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        List<JCoffeeAnalysis> result = JCoffeeAnalysis.findAllJCoffeeAnalyses();
        Assert.assertNotNull("Find all method for 'JCoffeeAnalysis' illegally returned null", result);
        Assert.assertTrue("Find all method for 'JCoffeeAnalysis' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void JCoffeeAnalysisIntegrationTest.testFindJCoffeeAnalysisEntries() {
        Assert.assertNotNull("Data on demand for 'JCoffeeAnalysis' failed to initialize correctly", dod.getRandomJCoffeeAnalysis());
        long count = JCoffeeAnalysis.countJCoffeeAnalyses();
        if (count > 20) count = 20;
        int firstResult = 0;
        int maxResults = (int) count;
        List<JCoffeeAnalysis> result = JCoffeeAnalysis.findJCoffeeAnalysisEntries(firstResult, maxResults);
        Assert.assertNotNull("Find entries method for 'JCoffeeAnalysis' illegally returned null", result);
        Assert.assertEquals("Find entries method for 'JCoffeeAnalysis' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    public void JCoffeeAnalysisIntegrationTest.testFlush() {
        JCoffeeAnalysis obj = dod.getRandomJCoffeeAnalysis();
        Assert.assertNotNull("Data on demand for 'JCoffeeAnalysis' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'JCoffeeAnalysis' failed to provide an identifier", id);
        obj = JCoffeeAnalysis.findJCoffeeAnalysis(id);
        Assert.assertNotNull("Find method for 'JCoffeeAnalysis' illegally returned null for id '" + id + "'", obj);
        boolean modified =  dod.modifyJCoffeeAnalysis(obj);
        Integer currentVersion = obj.getVersion();
        obj.flush();
        Assert.assertTrue("Version for 'JCoffeeAnalysis' failed to increment on flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void JCoffeeAnalysisIntegrationTest.testMergeUpdate() {
        JCoffeeAnalysis obj = dod.getRandomJCoffeeAnalysis();
        Assert.assertNotNull("Data on demand for 'JCoffeeAnalysis' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'JCoffeeAnalysis' failed to provide an identifier", id);
        obj = JCoffeeAnalysis.findJCoffeeAnalysis(id);
        boolean modified =  dod.modifyJCoffeeAnalysis(obj);
        Integer currentVersion = obj.getVersion();
        JCoffeeAnalysis merged = obj.merge();
        obj.flush();
        Assert.assertEquals("Identifier of merged object not the same as identifier of original object", merged.getId(), id);
        Assert.assertTrue("Version for 'JCoffeeAnalysis' failed to increment on merge and flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void JCoffeeAnalysisIntegrationTest.testPersist() {
        Assert.assertNotNull("Data on demand for 'JCoffeeAnalysis' failed to initialize correctly", dod.getRandomJCoffeeAnalysis());
        JCoffeeAnalysis obj = dod.getNewTransientJCoffeeAnalysis(Integer.MAX_VALUE);
        Assert.assertNotNull("Data on demand for 'JCoffeeAnalysis' failed to provide a new transient entity", obj);
        Assert.assertNull("Expected 'JCoffeeAnalysis' identifier to be null", obj.getId());
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
        Assert.assertNotNull("Expected 'JCoffeeAnalysis' identifier to no longer be null", obj.getId());
    }
    
    @Test
    public void JCoffeeAnalysisIntegrationTest.testRemove() {
        JCoffeeAnalysis obj = dod.getRandomJCoffeeAnalysis();
        Assert.assertNotNull("Data on demand for 'JCoffeeAnalysis' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'JCoffeeAnalysis' failed to provide an identifier", id);
        obj = JCoffeeAnalysis.findJCoffeeAnalysis(id);
        obj.remove();
        obj.flush();
        Assert.assertNull("Failed to remove 'JCoffeeAnalysis' with identifier '" + id + "'", JCoffeeAnalysis.findJCoffeeAnalysis(id));
    }
    
}
