package com.ncs.vo;

public class CityVO {

	private String code;// 도시 코드 이름
	private String name;// 도시 이름
	private String country;// 도시 소속 국가
	private String local;// 도시 위치
	private String image;// 도시 이미지

	public String getCode() {
		return code;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getLocal() {
		return local;
	}

	public void setLocal(String local) {
		this.local = local;
	}

	@Override
	public String toString() {
		return "CityVO [code=" + code + ", name=" + name + ", country=" + country + ", local=" + local + ", image="
				+ image + "]";
	}

}
