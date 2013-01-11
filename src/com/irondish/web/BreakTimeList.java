package com.irondish.web;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.SortedSet;
import java.util.TreeSet;

public class BreakTimeList {

	private SortedSet<String> breakTimes = new TreeSet<String>();
	
	public SortedSet<String> getBreakTimes() {
		return breakTimes;
	}

	private SimpleDateFormat sdf = new SimpleDateFormat("HH:mm");
	
	public void setAddTime(String time) {
		breakTimes.add(time);
	}
	public String getAddTime() {
		throw new UnsupportedOperationException();
	}
	
	public String getNext() {
		String time = sdf.format(new Date());
		
		String ret = breakTimes.tailSet(time).first();
		if (ret == null) {
			ret = breakTimes.first();
		}
		return ret;
	}
	
	
}
