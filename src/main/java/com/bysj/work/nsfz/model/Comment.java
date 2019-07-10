package com.bysj.work.nsfz.model;

public class Comment {
	private Integer commentId;
	private Integer userId;
	private Integer productId;
	private String replyName;
	private String commentName;
	private String content;
	private String commentDate;
	private Integer commentParentId;
	public Integer getCommentParentId() {
		return commentParentId;
	}
	public void setCommentParentId(Integer commentParentId) {
		this.commentParentId = commentParentId;
	}
	private String commentTime;
	private Integer state;
	
	
	public String getReplyName() {
		return replyName;
	}
	public void setReplyName(String replyName) {
		this.replyName = replyName;
	}
	public String getCommentName() {
		return commentName;
	}
	public void setCommentName(String commentName) {
		this.commentName = commentName;
	}
	public Integer getCommentId() {
		return commentId;
	}
	public void setCommentId(Integer commentId) {
		this.commentId = commentId;
	}
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public Integer getProductId() {
		return productId;
	}
	public void setProductId(Integer productId) {
		this.productId = productId;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getCommentDate() {
		return commentDate;
	}
	public void setCommentDate(String commentDate) {
		this.commentDate = commentDate;
	}
	public String getCommentTime() {
		return commentTime;
	}
	public void setCommentTime(String commentTime) {
		this.commentTime = commentTime;
	}
	public Integer getState() {
		return state;
	}
	public void setState(Integer state) {
		this.state = state;
	}
	@Override
	public String toString() {
		return "Comment [commentId=" + commentId + ", userId=" + userId + ", productId=" + productId + ", replyName="
				+ replyName + ", commentName=" + commentName + ", content=" + content + ", commentDate=" + commentDate
				+ ", commentParentId=" + commentParentId + ", commentTime=" + commentTime + ", state=" + state + "]";
	}
	
	
	
	
}
