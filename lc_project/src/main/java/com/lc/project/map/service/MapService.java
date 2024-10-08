package com.lc.project.map.service;

import com.lc.project.travel.model.vo.Travel;

public interface MapService {
	public abstract Travel selectTravel(String personnel, String location, String theme);
}
