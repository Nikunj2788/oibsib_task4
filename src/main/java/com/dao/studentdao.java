package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.bean.qustion;
import com.bean.student;
import com.util.studentutil;


public class studentdao {
	public static void insertop(student c) {
	try {
		Connection con = studentutil.createConnection();
		String sql ="insert into student_data(name,contactno,email,password,confirmpass) values(?,?,?,?,?)";
		PreparedStatement pst = con.prepareStatement(sql);
		pst.setString(1, c.getName());
		pst.setString(2, c.getContactno());
	    pst.setString(3, c.getEmail());
		pst.setString(4, c.getPassword());
		pst.setString(5, c.getConfirmpass());
		
		pst.executeUpdate();
		System.out.println("data inserted");
	} catch (Exception e) {
		// TODO: handle exception
		e.printStackTrace();
	}
}
public static student checklogin(student c) {
	// TODO Auto-generated method stub
	student c1 = null;
	try {
		Connection conn = studentutil.createConnection();
		String sql = "select * from student_data where email=? and password=?";
		PreparedStatement pst = conn.prepareStatement(sql);
		pst.setString(1, c.getEmail());
		pst.setString(2, c.getPassword());
		ResultSet rs = pst.executeQuery();
		if(rs.next()) {
			c1 = new student();
			c1.setId(rs.getInt("id"));
			c1.setName(rs.getString("name"));
			c1.setContactno(rs.getString("contactno"));			
	        c1.setEmail(rs.getString("email"));
			c1.setPassword(rs.getString("password"));
			c1.setConfirmpass(rs.getString("confirmpass"));
		}	
		}
		catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return c1;		
}

public static void updateUser(student d) {
	try {
		Connection conn = studentutil.createConnection();
		String sql="update student_data set name=?,contactno=?,email=?,password=?,confirmpass=? where id=?";
		PreparedStatement pst= conn.prepareStatement(sql);
		
		pst.setString(1, d.getName());	
		pst.setString(2, d.getContactno());
		pst.setString(3, d.getEmail());
		pst.setString(4, d.getPassword());
		pst.setString(5, d.getConfirmpass());
		
		pst.setInt(6, d.getId());
		pst.executeUpdate();
		System.out.println("data updated");
		
	} catch (Exception e) {
		// TODO: handle exception
		e.printStackTrace();
		
	}	
  }
public static void insertqus(qustion c) {
	// TODO Auto-generated method stub
	try {
		Connection con = studentutil.createConnection();
		String sql ="insert into answer(sid,q1,q2,q3,q4,q5,q6,q7,q8,q9,q10) values(?,?,?,?,?,?,?,?,?,?,?)";
		PreparedStatement pst = con.prepareStatement(sql);
		pst.setInt(1, c.getSid());
		pst.setString(2, c.getQ1());
		pst.setString(3, c.getQ2());
	    pst.setString(4, c.getQ3());
		pst.setString(5, c.getQ4());
		pst.setString(6, c.getQ5());
		pst.setString(7, c.getQ6());
		pst.setString(8, c.getQ7());
		pst.setString(9, c.getQ8());
		pst.setString(10, c.getQ9());
		pst.setString(11, c.getQ10());
		
		
		pst.executeUpdate();
		System.out.println("data inserted");
	} catch (Exception e) {
		// TODO: handle exception
		e.printStackTrace();
	}
	
}
}
