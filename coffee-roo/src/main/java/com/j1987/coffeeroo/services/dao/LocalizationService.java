package com.j1987.coffeeroo.services.dao;

import java.util.List;

import com.j1987.coffeeroo.domain.JLocalization;

public interface LocalizationService {

	public long countLocalizations();

	public List<JLocalization> findAllLocalizations();

	public JLocalization findLocalization(Long id);
	
	public List<JLocalization> findLocalizationsByCodeEquals(String code);

	public List<JLocalization> findLocalizationEntries(int firstResult, int maxResults);

	public void persist(JLocalization factory);

	public void remove(Long id);

	public void flush();

	public void clear();

	public JLocalization merge(JLocalization factory);

	public void update(JLocalization factory);

	

}
