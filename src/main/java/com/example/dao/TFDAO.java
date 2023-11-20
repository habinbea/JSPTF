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

	private final String TF_INSERT = "insert into pLDLR_TF (tfname, tffullname, generalinformation, feedbackregulation, reference) values (?,?,?,?,?)";
	private final String TF_UPDATE = "update pLDLR_TF set tfname=?, tffullname=?, generalinformation=?, feedbackregulation=?, reference=? where tfid=?";
	private final String TF_DELETE = "delete from pLDLR_TF  where tfid=?";
	private final String TF_GET = "select * from pLDLR_TF  where tfid=?";
	private final String TF_LIST = "select * from pLDLR_TF order by tfid desc";

	public int insertTF(TFVO vo) {
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(TF_INSERT);
			stmt.setString(1, vo.getTfname());
			stmt.setString(2, vo.getTffullname());
			stmt.setString(3, vo.getGeneralinformation());
			stmt.setString(4, vo.getFeedbackregulation());
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
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(TF_DELETE);
			stmt.setInt(1, vo.getTfid());
			stmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public int updateTF(TFVO vo) {
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(TF_UPDATE);
			stmt.setString(1, vo.getTfname());
			stmt.setString(2, vo.getTffullname());
			stmt.setString(3, vo.getGeneralinformation());
			stmt.setString(4, vo.getFeedbackregulation());
			stmt.setString(5, vo.getReference());
			stmt.setInt(6, vo.getTfid());
			stmt.executeUpdate();
			return 1;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}

	public TFVO getTF(int seq) {
		TFVO one = new TFVO();
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(TF_GET);
			stmt.setInt(1, seq);
			rs = stmt.executeQuery();
			if(rs.next()) {
				one.setTfid(rs.getInt("TFID"));
				one.setTfname(rs.getString("TFName"));
				one.setTffullname(rs.getString("TFFullName"));
				one.setGeneralinformation(rs.getString("generalinformation"));
				one.setFeedbackregulation(rs.getString("FeedbackRegulation"));
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
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(TF_LIST);
			rs = stmt.executeQuery();
			while(rs.next()) {
				TFVO one = new TFVO();
				one.setTfid(rs.getInt("TFID"));
				one.setTfname(rs.getString("TFName"));
				one.setTffullname(rs.getString("TFFullName"));
				one.setGeneralinformation(rs.getString("generalinformation"));
				one.setFeedbackregulation(rs.getString("FeedbackRegulation"));
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
