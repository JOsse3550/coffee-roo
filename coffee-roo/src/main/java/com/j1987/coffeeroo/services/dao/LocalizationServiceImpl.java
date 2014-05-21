package com.j1987.coffeeroo.services.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.j1987.coffeeroo.domain.JLocalization;
import com.j1987.coffeeroo.framework.JUtils;

public class LocalizationServiceImpl implements LocalizationService {
	
	@PersistenceContext(name=JUtils.DB_PERSISTENCE_UNIT)
	private EntityManager entityManager;

	public LocalizationServiceImpl() {
		// TODO Auto-generated constructor stub
	}
	
	@Override
	 public long countLocalizations() {
	        return entityManager.createQuery("SELECT COUNT(l) FROM JLocalization l", Long.class).getSingleResult();
	 }
	    
	 @Override
    public List<JLocalization> findAllLocalizations() {
        return entityManager.createQuery("SELECT l FROM JLocalization l", JLocalization.class).getResultList();
    }
	    
    @Override
    public JLocalization findLocalization(Long id) {
        if (id == null) return null;
        return entityManager.find(JLocalization.class, id);
    }
    
    @Override
    public List<JLocalization> findLocalizationsByCodeEquals(String code) {
    	
        if (code == null || code.length() == 0) throw new IllegalArgumentException("The code argument is required");
       
        return entityManager.createQuery("SELECT l FROM JLocalization AS l WHERE l.code = :code", JLocalization.class)
        		.setParameter("code", code)
        		.getResultList();
        
    }
    
    @Override
    public List<JLocalization> findLocalizationEntries(int firstResult, int maxResults) {
    	
        return entityManager.createQuery("SELECT l FROM JLocalization l", JLocalization.class)
        		.setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    @Override
    public void persist(JLocalization tour) {
        this.entityManager.persist(tour);
    }
    
    @Transactional
    @Override
    public void remove(Long id) {

            JLocalization attached = this.findLocalization(id);
            this.entityManager.remove(attached);
    }
    
    @Transactional
    @Override
    public void flush() {
        this.entityManager.flush();
    }
    
    @Transactional
    @Override
    public void clear() {
        this.entityManager.clear();
    }
    
    @Transactional
    @Override
    public JLocalization merge(JLocalization tour) {
        JLocalization merged = this.entityManager.merge(tour);
        this.entityManager.flush();
        return merged;
    }
    
	@Override
	@Transactional(propagation = Propagation.REQUIRED)
	public void update(JLocalization tour) {
		
    	this.entityManager.createQuery("UPDATE JLocalization l SET l.name = :name,  l.description = :description WHERE f.id = :id")
    	.setParameter("id", tour.getId())
    	.setParameter("name", tour.getName())
    	.setParameter("description",tour.getDescription())
    	.executeUpdate();

	}
    
	public void setEntityManager(EntityManager entityManager) {
		this.entityManager = entityManager;
	}

}
