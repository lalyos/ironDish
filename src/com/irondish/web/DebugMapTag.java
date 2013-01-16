package com.irondish.web;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.Tag;
import javax.servlet.jsp.tagext.TagSupport;

public class DebugMapTag extends TagSupport {

	private String title;
	private String map;
	
	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getMap() {
		return map;
	}

	public void setMap(String map) {
		this.map = map;
	}

	@Override
	public int doStartTag() throws JspException {
		
		try {
			pageContext.getOut().println("<h2>" + title + "</h2>");
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return Tag.SKIP_BODY;
	}
}
