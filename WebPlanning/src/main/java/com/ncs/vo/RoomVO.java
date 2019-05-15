package com.ncs.vo;

public class RoomVO {
	
	private String room_code;
	private String room_name;
	private String room_local;
	private String room_report;
	private String room_in;
	private String room_out;
	private int room_price;
	private String room_image;
	private String city_code;
	
	public String getRoom_code() {
		return room_code;
	}
	public void setRoom_code(String room_code) {
		this.room_code = room_code;
	}
	public String getRoom_name() {
		return room_name;
	}
	public void setRoom_name(String room_name) {
		this.room_name = room_name;
	}
	public String getRoom_local() {
		return room_local;
	}
	public void setRoom_local(String room_local) {
		this.room_local = room_local;
	}
	public String getRoom_report() {
		return room_report;
	}
	public void setRoom_report(String room_report) {
		this.room_report = room_report;
	}
	public String getRoom_in() {
		return room_in;
	}
	public void setRoom_in(String room_in) {
		this.room_in = room_in;
	}
	public String getRoom_out() {
		return room_out;
	}
	public void setRoom_out(String room_out) {
		this.room_out = room_out;
	}
	public int getRoom_price() {
		return room_price;
	}
	public void setRoom_price(int room_price) {
		this.room_price = room_price;
	}
	public String getRoom_image() {
		return room_image;
	}
	public void setRoom_image(String room_image) {
		this.room_image = room_image;
	}
	public String getCity_code() {
		return city_code;
	}
	public void setCity_code(String city_code) {
		this.city_code = city_code;
	}

	@Override
	public String toString() {
		return "RoomVO [room_code=" + room_code + ", room_name=" + room_name + ", room_local=" + room_local
				+ ", room_report=" + room_report + ", room_in=" + room_in + ", room_out=" + room_out + ", room_price="
				+ room_price + ", room_image=" + room_image + ", city_code=" + city_code + "]";
	}
	     
}