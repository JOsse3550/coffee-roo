package com.j1987.coffeeroo.services.dao;

import java.util.List;

import com.j1987.coffeeroo.domain.JTour;

public interface TourService {

	public long countTours();

	public List<JTour> findAllTours();

	public JTour findTour(Long id);
	
	public List<JTour> findToursByCodeEquals(String code);

	public List<JTour> findTourEntries(int firstResult, int maxResults);

	public void persist(JTour factory);

	public void remove(Long id);

	public void flush();

	public void clear();

	public JTour merge(JTour factory);

	public void update(JTour factory);

	

}
