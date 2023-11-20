package com.example.bean;

import java.util.Date;

public class TFVO {
	private int tfid;
	private String tfname;
	private String tffullname;

	private String generalinformation;
	private String feedbackregulation;
	private String reference;
	private Date regdate;

	public int getTfid() { return tfid;	}
	public void setTfid(int tfid) {
		this.tfid = tfid;
	}
	public String getTfname() {
		return tfname;
	}
	public void setTfname(String tfname) {
		this.tfname = tfname;
	}
	public String getTffullname() {
		return tffullname;
	}
	public void setTffullname(String tffullname) {
		this.tffullname = tffullname;
	}
	public String getGeneralinformation() {
		return generalinformation;
	}
	public void setGeneralinformation(String GeneralInformation) { this.generalinformation = GeneralInformation; }
	public String getFeedbackregulation() {
		return feedbackregulation;
	}
	public void setFeedbackregulation(String FeedbackRegulation) {
		this.feedbackregulation = FeedbackRegulation;
	}
	public String getReference() {
		return reference;
	}
	public void setReference(String Reference) {
		this.reference = Reference;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date Regdate) {
		this.regdate = Regdate;
	}
}
