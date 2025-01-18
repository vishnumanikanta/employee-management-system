package services;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import models.employee;

public class employeeservice {

	private Connection conn;

	public employeeservice(Connection conn) {
		super();
		this.conn = conn;
	}

	public boolean addemployee(employee emp) {
		boolean f = false;
		try {
			String sql = "insert into employee (rollnumber,employeename,email,address,pincode,mobilenumber,gender,password) values (?,?,?,?,?,?,?,?)";
			PreparedStatement pmst = conn.prepareStatement(sql);
			pmst.setString(1, emp.getRollnumber());
			pmst.setString(2, emp.getEmployeename());
			pmst.setString(3, emp.getEmail());
			pmst.setString(4, emp.getAddress());
			pmst.setInt(5, emp.getPincode());
			pmst.setLong(6, emp.getMobilenumber());
			pmst.setInt(7, emp.getGender());
			pmst.setString(8, emp.getPassword());

			int i = pmst.executeUpdate();
			if (i == 1) {
				f = true;

			}
		} catch (Exception e) {

			e.printStackTrace();
		}
		return f;
	}
	public boolean register(employee emp) {
		boolean f = false;
		try {
			String sql = "insert into registration(rollnumber,employeename,email,password) values (?,?,?,?)";
			PreparedStatement pmst = conn.prepareStatement(sql);
			pmst.setString(1, emp.getRollnumber());
			pmst.setString(2, emp.getEmployeename());
			pmst.setString(3, emp.getEmail());
			
			pmst.setString(4, emp.getPassword());

			int i = pmst.executeUpdate();
			if (i == 1) {
				f = true;

			}
		} catch (Exception e) {

			e.printStackTrace();
		}
		return f;
	}
	public List<employee> getAllEmployees() {
		List<employee> li = new ArrayList<employee>();
		employee e = null;
		try {
			String sql = "select * from employee";
			PreparedStatement pmst = conn.prepareStatement(sql);
			ResultSet rs = pmst.executeQuery();
			while (rs.next()) {
				e = new employee();
				e.setRollnumber(rs.getString(1));
				e.setEmployeename(rs.getString(2));
				e.setEmail(rs.getString(3));
				e.setAddress(rs.getString(4));
				e.setPincode(rs.getInt(5));
				e.setMobilenumber(rs.getLong(6));
				e.setGender(rs.getInt(7));
				li.add(e);

			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return li;

	}



public employee getbyemail(String email){
	employee emp=null;
	try {
		String sql="select * from employee where email=?";
		PreparedStatement pmst=conn.prepareStatement(sql);
		pmst.setString(1, email);
		ResultSet rs=pmst.executeQuery();
		while(rs.next()) {
			emp=new employee();
			emp.setRollnumber(rs.getString(1));
			emp.setEmployeename(rs.getString(2));
			emp.setEmail(rs.getString(3));
			emp.setAddress(rs.getString(4));
			emp.setPincode(rs.getInt(5));
			emp.setMobilenumber(rs.getLong(6));
			emp.setGender(rs.getInt(7));  
		}
	}
		catch (Exception e) {
		e.printStackTrace();
}
	return emp;
}


public boolean update(employee emp) {
    boolean f = false;
    try {
        String sql = "UPDATE employee SET employeename=?, email=?, address=?, pincode=?, mobilenumber=?, gender=? WHERE rollnumber=?";
        PreparedStatement pmst = conn.prepareStatement(sql);
        pmst.setString(1, emp.getEmployeename());
        pmst.setString(2, emp.getEmail());
        pmst.setString(3, emp.getAddress());
        pmst.setInt(4, emp.getPincode());
        pmst.setLong(5, emp.getMobilenumber());
        pmst.setInt(6, emp.getGender());
        pmst.setString(7, emp.getRollnumber()); 
        int i = pmst.executeUpdate();
        if (i == 1) {
            f = true;
        }
    } catch (Exception e) {
        e.printStackTrace();
    }
    return f;
}
public employee getByRollNumber(String rollnumber) {
    employee emp = null;
    try {
        String sql = "SELECT * FROM employee WHERE rollnumber = ?";
        PreparedStatement pmst = conn.prepareStatement(sql);
        pmst.setString(1, rollnumber);
        ResultSet rs = pmst.executeQuery();
        if (rs.next()) {
            emp = new employee();
            emp.setRollnumber(rs.getString("rollnumber"));
            emp.setEmployeename(rs.getString("employeename"));
            emp.setEmail(rs.getString("email"));
            emp.setAddress(rs.getString("address"));
            emp.setPincode(rs.getInt("pincode"));
            emp.setMobilenumber(rs.getLong("mobilenumber"));
            emp.setGender(rs.getInt("gender"));
        }
    } catch (Exception e) {
        e.printStackTrace();
    }
    return emp;
}

public boolean delete(String rollno) {
	boolean f=false;
	try {
		String sql="delete from employee where rollnumber=?";
		PreparedStatement pmst=conn.prepareStatement(sql);
		pmst.setString(1, rollno);
		int i=pmst.executeUpdate();
		if (i==1) {
			f=true;
		}
	} catch (Exception e) {
		e.printStackTrace();
	}
	return f;
}
public boolean login(String email,String password) {
	boolean f=false;
	try {
		String sql="select * from registration where email=? and password=?";
		PreparedStatement pmst=conn.prepareStatement(sql);
		pmst.setString(1, email);
		pmst.setString(2, password);
		ResultSet rs=pmst.executeQuery();
		while(rs.next()) {
			f=true;
		}
	} catch (Exception e) {
		e.printStackTrace();
	}
	return f;
}
}
