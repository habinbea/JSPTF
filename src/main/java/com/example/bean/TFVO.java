package com.example.bean;

import java.util.Date;

public class TFVO {
	private int TFID;
	private String TFName;
	private String TFFullName;
	private String GeneralInformation;
	private String FeedbackRegulation;
	private String Reference;
	private Date Regdate;

	public int getTFID() {
		return TFID;
	}
	public void setTFID(int TFID) {
		this.TFID = TFID;
	}
	public String getTFName() {
		return TFName;
	}
	public void setTFName(String TFName) {
		this.TFName = TFName;
	}
	public String getTFFullName() {
		return TFFullName;
	}
	public void setTFFullName(String TFFullName) {
		this.TFFullName = TFFullName;
	}
	public String getGeneralInformation() {
		return GeneralInformation;
	}
	public void setGeneralInformation(String generalInformation) {
		GeneralInformation = generalInformation;
	}
	public String getFeedbackRegulation() {
		return FeedbackRegulation;
	}
	public void setFeedbackRegulation(String feedbackRegulation) {
		FeedbackRegulation = feedbackRegulation;
	}
	public String getReference() {
		return Reference;
	}
	public void setReference(String reference) {
		Reference = reference;
	}
	public Date getRegdate() {
		return Regdate;
	}
	public void setRegdate(Date regdate) {
		Regdate = regdate;
	}
}
