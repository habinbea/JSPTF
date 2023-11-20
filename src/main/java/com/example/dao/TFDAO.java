package com.example.dao;

import com.example.bean.TFVO;
import com.example.util.JDBCUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class TFDAO {

	Connection conn = null;
	PreparedStatement stmt = null;
	ResultSet rs = null;

	private final String TF_INSERT = "insert into pLDLR_TF (TFName, TFFullName, GeneralInformation, FeedbackRegulation, Reference) values (?,?,?,?,?)";
	private final String TF_UPDATE = "update pLDLR_TF set TFName=?, TFFullName=?, GeneralInformation=?, FeedbackRegulation=?, Reference=? where TFID=?";
	private final String TF_DELETE = "delete from pLDLR_TF  where TFID=?";
	private final String TF_GET = "select * from pLDLR_TF  where TFID=?";
	private final String TF_LIST = "select * from pLDLR_TF order by TFID desc";

	public int insertTF(TFVO vo) {
		System.out.println("===> JDBC로 insertTF() 기능 처리");
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(TF_INSERT);
			stmt.setString(1, vo.getTFName());
			stmt.setString(2, vo.getTFFullName());
			stmt.setString(3, vo.getGeneralInformation());
			stmt.setString(4, vo.getFeedbackRegulation());
			stmt.setString(5, vo.getReference());
			stmt.executeUpdate();
			return 1;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}

	// 글 삭제
	public void deleteTF(TFVO vo) {
		System.out.println("===> JDBC로 deleteTF() 기능 처리");
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(TF_DELETE);
			stmt.setInt(1, vo.getTFID());
			stmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public int updateTF(TFVO vo) {
		System.out.println("===> JDBC로 updateTF() 기능 처리");
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(TF_UPDATE);
			stmt.setString(1, vo.getTFName());
			stmt.setString(2, vo.getTFFullName());
			stmt.setString(3, vo.getGeneralInformation());
			stmt.setString(4, vo.getFeedbackRegulation());
			stmt.setString(5, vo.getReference());
			stmt.setInt(5, vo.getTFID());

			System.out.println(vo.getTFName() + "-" + vo.getTFFullName() + "-" + vo.getGeneralInformation() + "-" + vo.getFeedbackRegulation() + "-" + vo.getReference() + "-" + vo.getTFID());
			stmt.executeUpdate();
			return 1;

		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}

	public TFVO getTF(int seq) {
		TFVO one = new TFVO();
		System.out.println("===> JDBC로 getTF() 기능 처리");
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(TF_GET);
			stmt.setInt(1, seq);
			rs = stmt.executeQuery();
			if(rs.next()) {
				one.setTFID(rs.getInt("TFID"));
				one.setTFName(rs.getString("TFName"));
				one.setTFFullName(rs.getString("TFFullName"));
				one.setGeneralInformation(rs.getString("GeneralInformation"));
				one.setFeedbackRegulation(rs.getString("FeedbackRegulation"));
				one.setReference(rs.getString("Reference"));
			}
			rs.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return one;
	}

	public List<TFVO> getTFList(){
		List<TFVO> list = new ArrayList<TFVO>();
		System.out.println("===> JDBC로 getTFList() 기능 처리");
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(TF_LIST);
			rs = stmt.executeQuery();
			while(rs.next()) {
				TFVO one = new TFVO();
				one.setTFID(rs.getInt("TFID"));
				one.setTFName(rs.getString("TFName"));
				one.setTFFullName(rs.getString("TFFullName"));
				one.setGeneralInformation(rs.getString("GeneralInformation"));
				one.setFeedbackRegulation(rs.getString("FeedbackRegulation"));
				one.setReference(rs.getString("Reference"));
				one.setRegdate(rs.getDate("Regdate"));
				list.add(one);
			}
			rs.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
}
