package com.yong.ex3.domain;

import java.util.Date;

public class UserVo extends SearchVo{
	private String uId;
	private String uPw;
	private String uName;
	private String uEmail;
	private String uSex;
	private String uDevice;
	private String uPushToken;
	private Date uJoinDate;
	private String uIsUse;
	
	public UserVo() {}

	public String getuId() {
		return uId;
	}

	public void setuId(String uId) {
		this.uId = uId;
	}

	public String getuPw() {
		return uPw;
	}

	public void setuPw(String uPw) {
		this.uPw = uPw;
	}	
	
	public String getuName() {
		return uName;
	}

	public void setuName(String uName) {
		this.uName = uName;
	}

	public String getuEmail() {
		return uEmail;
	}

	public void setuEmail(String uEmail) {
		this.uEmail = uEmail;
	}

	public String getuSex() {
		return uSex;
	}

	public void setuSex(String uSex) {
		this.uSex = uSex;
	}

	public String getuDevice() {
		return uDevice;
	}

	public void setuDevice(String uDevice) {
		this.uDevice = uDevice;
	}

	public String getuPushToken() {
		return uPushToken;
	}

	public void setuPushToken(String uPushToken) {
		this.uPushToken = uPushToken;
	}

	public Date getuJoinDate() {
		return uJoinDate;
	}

	public void setuJoinDate(Date uJoinDate) {
		this.uJoinDate = uJoinDate;
	}
	
	public String getuIsUse() {
		return uIsUse;
	}

	public void setuIsUse(String uIsUse) {
		this.uIsUse = uIsUse;
	}

	@Override
	public String toString() {
		return "UserVo [uId=" + uId + ", uPw=" + uPw + ", uName=" + uName + ", uEmail=" + uEmail + ", uSex=" + uSex
				+ ", uDevice=" + uDevice + ", uPushToken=" + uPushToken + ", uJoinDate=" + uJoinDate + ", uIsUse="
				+ uIsUse + "]" + ", " + super.toString();
	}
	
}
