package com.ncs.vo;

public class TourVO {
	
	private String tour_code;
	private String tour_name;
	private String tour_local;
	private String tour_report;
	private String tour_time;
	private String tour_phone;
	private String tour_page;
	private String tour_image;
	private String city_code;
	
	public String getTour_code() {
		return tour_code;
	}
	public void setTour_code(String tour_code) {
		this.tour_code = tour_code;
	}
	public String getTour_name() {
		return tour_name;
	}
	public void setTour_name(String tour_name) {
		this.tour_name = tour_name;
	}
	public String getTour_local() {
		return tour_local;
	}
	public void setTour_local(String tour_local) {
		this.tour_local = tour_local;
	}
	public String getTour_report() {
		return tour_report;
	}
	public void setTour_report(String tour_report) {
		this.tour_report = tour_report;
	}
	public String getTour_time() {
		return tour_time;
	}
	public void setTour_time(String tour_time) {
		this.tour_time = tour_time;
	}
	public String getTour_phone() {
		return tour_phone;
	}
	public void setTour_phone(String tour_phone) {
		this.tour_phone = tour_phone;
	}
	public String getTour_page() {
		return tour_page;
	}
	public void setTour_page(String tour_page) {
		this.tour_page = tour_page;
	}
	public String getTour_image() {
		return tour_image;
	}
	public void setTour_image(String tour_image) {
		this.tour_image = tour_image;
	}
	public String getCity_code() {
		return city_code;
	}
	public void setCity_code(String city_code) {
		this.city_code = city_code;
	}
	@Override
	public String toString() {
		return "TourVO [tour_code=" + tour_code + ", tour_name=" + tour_name + ", tour_local=" + tour_local
				+ ", tour_report=" + tour_report + ", tour_time=" + tour_time + ", tour_phone=" + tour_phone
				+ ", tour_page=" + tour_page + ", tour_image=" + tour_image + ", city_code=" + city_code + "]";
	}	
}
