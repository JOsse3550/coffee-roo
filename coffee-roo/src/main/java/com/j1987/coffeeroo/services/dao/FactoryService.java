package com.j1987.coffeeroo.services.dao;

import java.util.List;

import com.j1987.coffeeroo.domain.JFactory;

public interface FactoryService {

	public long countFactories();

	public List<JFactory> findAllFactories();

	public JFactory findFactory(Long id);
	
	public List<JFactory> findFactoriesByCodeEquals(String code);

	public List<JFactory> findFactoryEntries(int firstResult, int maxResults);

	public void persist(JFactory factory);

	public void remove(Long id);

	public void flush();

	public void clear();

	public JFactory merge(JFactory factory);

	public void update(JFactory factory);

	

}
