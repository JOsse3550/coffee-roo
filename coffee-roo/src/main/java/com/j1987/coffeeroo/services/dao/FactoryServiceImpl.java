package com.j1987.coffeeroo.services.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.j1987.coffeeroo.domain.JFactory;
import com.j1987.coffeeroo.framework.JUtils;

public class FactoryServiceImpl implements FactoryService {
	
	@PersistenceContext(name=JUtils.DB_PERSISTENCE_UNIT)
	private EntityManager entityManager;

	public FactoryServiceImpl() {
		// TODO Auto-generated constructor stub
	}
	
	@Override
	 public long countFactories() {
	        return entityManager.createQuery("SELECT COUNT(f) FROM JFactory f", Long.class).getSingleResult();
	 }
	    
	 @Override
    public List<JFactory> findAllFactories() {
        return entityManager.createQuery("SELECT f FROM JFactory f", JFactory.class).getResultList();
    }
	    
    @Override
    public JFactory findFactory(Long id) {
        if (id == null) return null;
        return entityManager.find(JFactory.class, id);
    }
    
    @Override
    public List<JFactory> findFactoriesByCodeEquals(String code) {
    	
        if (code == null || code.length() == 0) throw new IllegalArgumentException("The code argument is required");
       
        return entityManager.createQuery("SELECT f FROM JFactory AS f WHERE f.code = :code", JFactory.class)
        		.setParameter("code", code)
        		.getResultList();
        
    }
    
    @Override
    public List<JFactory> findFactoryEntries(int firstResult, int maxResults) {
    	
        return entityManager.createQuery("SELECT f FROM JFactory f", JFactory.class)
        		.setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    @Override
    public void persist(JFactory factory) {
        this.entityManager.persist(factory);
    }
    
    @Transactional
    @Override
    public void remove(Long id) {

            JFactory attached = this.findFactory(id);
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
    public JFactory merge(JFactory factory) {
        JFactory merged = this.entityManager.merge(factory);
        this.entityManager.flush();
        return merged;
    }
    
	@Override
	@Transactional(propagation = Propagation.REQUIRED)
	public void update(JFactory factory) {
		
    	this.entityManager.createQuery("UPDATE JFactory f SET f.name = :name,  f.description = :description WHERE f.id = :id")
    	.setParameter("id", factory.getId())
    	.setParameter("name", factory.getName())
    	.setParameter("description",factory.getDescription())
    	.executeUpdate();

	}
    
	public void setEntityManager(EntityManager entityManager) {
		this.entityManager = entityManager;
	}

}
