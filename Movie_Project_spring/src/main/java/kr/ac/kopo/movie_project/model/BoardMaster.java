package kr.ac.kopo.movie_project.model;

public class BoardMaster {
	private int boardId;
	private String subject;
	private char reply;
	private char attach;
	private char secret;
	private char permission;
	public int getBoardId() {
		return boardId;
	}
	public void setBoardId(int boardId) {
		this.boardId = boardId;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public char getReply() {
		return reply;
	}
	public void setReply(char reply) {
		this.reply = reply;
	}
	public char getAttach() {
		return attach;
	}
	public void setAttach(char attach) {
		this.attach = attach;
	}
	public char getSecret() {
		return secret;
	}
	public void setSecret(char secret) {
		this.secret = secret;
	}
	public char getPermission() {
		return permission;
	}
	public void setPermission(char permission) {
		this.permission = permission;
	}
	
}
