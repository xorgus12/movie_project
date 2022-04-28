package kr.ac.kopo.movie_project.model;

public class NaverData {
	private String title;//"<b>공기살인</b>", 형식의 제목
	private String link;//사이트
	private String image;//이미지주소
	private String subtitle;//영어이름
	private String pubDate;//상영년도
	private String director;//감독명 "조용선|"
	private String actor;//배우명 "김상경|이선빈|윤경호|서영희|"
	private String userRating;//평점
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getLink() {
		return link;
	}
	public void setLink(String link) {
		this.link = link;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getSubtitle() {
		return subtitle;
	}
	public void setSubtitle(String subtitle) {
		this.subtitle = subtitle;
	}
	public String getPubDate() {
		return pubDate;
	}
	public void setPubDate(String pubDate) {
		this.pubDate = pubDate;
	}
	public String getDirector() {
		return director;
	}
	public void setDirector(String director) {
		this.director = director;
	}
	public String getActor() {
		return actor;
	}
	public void setActor(String actor) {
		this.actor = actor;
	}
	public String getUserRating() {
		return userRating;
	}
	public void setUserRating(String userRating) {
		this.userRating = userRating;
	}
	
}
