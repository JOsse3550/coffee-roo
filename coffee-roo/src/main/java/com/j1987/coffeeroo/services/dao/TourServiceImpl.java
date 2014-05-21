package com.j1987.coffeeroo.services.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.j1987.coffeeroo.domain.JTour;
import com.j1987.coffeeroo.framework.JUtils;

public class TourServiceImpl implements TourService {
	
	@PersistenceContext(name=JUtils.DB_PERSISTENCE_UNIT)
	private EntityManager entityManager;

	public TourServiceImpl() {
		// TODO Auto-generated constructor stub
	}
	
	@Override
	 public long countTours() {
	        return entityManager.createQuery("SELECT COUNT(f) FROM JTour f", Long.class).getSingleResult();
	 }
	    
	 @Override
    public List<JTour> findAllTours() {
        return entityManager.createQuery("SELECT f FROM JTour f", JTour.class).getResultList();
    }
	    
    @Override
    public JTour findTour(Long id) {
        if (id == null) return null;
        return entityManager.find(JTour.class, id);
    }
    
    @Override
    public List<JTour> findToursByCodeEquals(String code) {
    	
        if (code == null || code.length() == 0) throw new IllegalArgumentException("The code argument is required");
       
        return entityManager.createQuery("SELECT t FROM JTour AS t WHERE t.code = :code", JTour.class)
        		.setParameter("code", code)
        		.getResultList();
        
    }
    
    @Override
    public List<JTour> findTourEntries(int firstResult, int maxResults) {
    	
        return entityManager.createQuery("SELECT t FROM JTour t", JTour.class)
        		.setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    @Override
    public void persist(JTour tour) {
        this.entityManager.persist(tour);
    }
    
    @Transactional
    @Override
    public void remove(Long id) {

            JTour attached = this.findTour(id);
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
    public JTour merge(JTour tour) {
        JTour merged = this.entityManager.merge(tour);
        this.entityManager.flush();
        return merged;
    }
    
	@Override
	@Transactional(propagation = Propagation.REQUIRED)
	public void update(JTour tour) {
		
    	this.entityManager.createQuery("UPDATE JTour t SET t.name = :name,  t.description = :description WHERE t.id = :id")
    	.setParameter("id", tour.getId())
    	.setParameter("name", tour.getName())
    	.setParameter("description",tour.getDescription())
    	.executeUpdate();

	}
    
	public void setEntityManager(EntityManager entityManager) {
		this.entityManager = entityManager;
	}

}
