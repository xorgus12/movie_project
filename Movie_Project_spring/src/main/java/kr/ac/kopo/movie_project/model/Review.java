package kr.ac.kopo.movie_project.model;

public class Review {
	private String id;
	private String review;
	private int star;
	private int recommend;
	private int movie;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getReview() {
		return review;
	}
	public void setReview(String review) {
		this.review = review;
	}
	public int getStar() {
		return star;
	}
	public void setStar(int star) {
		this.star = star;
	}
	public int getMovie() {
		return movie;
	}
	public void setMovie(int movie) {
		this.movie = movie;
	}
	public int getRecommend() {
		return recommend;
	}
	public void setRecommend(int recommend) {
		this.recommend = recommend;
	}
	
}
