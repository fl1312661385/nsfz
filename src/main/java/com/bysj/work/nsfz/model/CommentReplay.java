package com.bysj.work.nsfz.model;

public class CommentReplay {
	private Integer commentId;
	private Integer userId;
	private Integer productId;
	private String userName;
	private String content;
	private String commentTime;
	private String commentDate;
	private Integer commentParentId;
	private Integer commentId1;
	private Integer userId1;
	private String userName1;
	private String content1;
	private String commentDate1;
	private String commentTime1;
	private Integer commentParentId1;
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
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
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
	public Integer getCommentParentId() {
		return commentParentId;
	}
	public void setCommentParentId(Integer commentParentId) {
		this.commentParentId = commentParentId;
	}
	public Integer getCommentId1() {
		return commentId1;
	}
	public void setCommentId1(Integer commentId1) {
		this.commentId1 = commentId1;
	}
	public Integer getUserId1() {
		return userId1;
	}
	public void setUserId1(Integer userId1) {
		this.userId1 = userId1;
	}
	public String getUserName1() {
		return userName1;
	}
	public void setUserName1(String userName1) {
		this.userName1 = userName1;
	}
	public String getContent1() {
		return content1;
	}
	public void setContent1(String content1) {
		this.content1 = content1;
	}
	public String getCommentDate1() {
		return commentDate1;
	}
	public void setCommentDate1(String commentDate1) {
		this.commentDate1 = commentDate1;
	}
	public Integer getCommentParentId1() {
		return commentParentId1;
	}
	public void setCommentParentId1(Integer commentParentId1) {
		this.commentParentId1 = commentParentId1;
	}
	
	public String getCommentTime() {
		return commentTime;
	}
	public void setCommentTime(String commentTime) {
		this.commentTime = commentTime;
	}
	public String getCommentTime1() {
		return commentTime1;
	}
	public void setCommentTime1(String commentTime1) {
		this.commentTime1 = commentTime1;
	}
	@Override
	public String toString() {
		return "CommentReplay [commentId=" + commentId + ", userId=" + userId + ", productId=" + productId
				+ ", userName=" + userName + ", content=" + content + ", commentDate=" + commentDate
				+ ", commentParentId=" + commentParentId + ", commentId1=" + commentId1 + ", userId1=" + userId1
				+ ", userName1=" + userName1 + ", content1=" + content1 + ", commentDate1=" + commentDate1
				+ ", commentParentId1=" + commentParentId1 + "]";
	}
	
}
