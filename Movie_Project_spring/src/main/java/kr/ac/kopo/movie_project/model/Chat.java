package kr.ac.kopo.movie_project.model;

public class Chat {
	private String roomId;
	private String time;
	private String message;
	private String consulting;
	private String uesrId;
	public String getRoomId() {
		return roomId;
	}
	public void setRoomId(String roomId) {
		this.roomId = roomId;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public String getConsulting() {
		return consulting;
	}
	public void setConsulting(String consulting) {
		this.consulting = consulting;
	}
	public String getUesrId() {
		return uesrId;
	}
	public void setUesrId(String uesrId) {
		this.uesrId = uesrId;
	}
}
