package com.bysj.work.nsfz.model;

import java.util.List;

public class Result {
	private List<Comment> result;

	public List<Comment> getResult() {
		return result;
	}

	public void setResult(List<Comment> result) {
		this.result = result;
	}

	@Override
	public String toString() {
		return "Result [result=" + result + "]";
	}
	
}
