package DatabaseConnection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import dtos.ClientDetails;
import dtos.RegisterClient;

public class AdminModel {
	public static final String Driver = "com.mysql.cj.jdbc.Driver";
	public static final String Db = "jdbc:mysql://localhost:3306/";
	public static final String Dbname = "class";
	public static final String uname = "root";
	public static final String pass = "root";

	public static Connection createConnection() {

		Connection con = null;
		try {
			Class.forName(Driver);
			con = DriverManager.getConnection(Db + Dbname, uname, pass);

		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}
		return con;
	}
	
	public int checkLogin(String username, String password,String logtype) {
		int i = 0;
		Connection con = null;
		try {
			con = createConnection();
			PreparedStatement ps = con.prepareStatement("select * from login where username =? and password =? and logtype=?");
			ps.setString(1, username);
			ps.setString(2, password);
			ps.setString(3, logtype);
			
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				i = 1;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		closeConnection();
		return i;
	}

	public int ClientEntry(ClientDetails cd) {
		int i = 0;
		Connection con = null;
		try {
			con = createConnection();
			PreparedStatement ps = con.prepareStatement("insert into contact (name,email,workmode,message) values (?,?,?,?)");
				
			ps.setString(1, cd.getName());
			ps.setString(2, cd.getEmail());
			ps.setString(3, cd.getMode());
			ps.setString(4, cd.getMessage());

			i = ps.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}

		closeConnection();
		return i;
	}
	
	public ArrayList<ClientDetails> getAllEnquiries() {
		ArrayList<ClientDetails> al = new ArrayList<>();
		Connection con = null;
		try {
			con = createConnection();
			PreparedStatement ps = con.prepareStatement("select *from contact");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				ClientDetails dd = new ClientDetails(rs.getString("name"), rs.getString("email"), rs.getString("workmode"),
						rs.getString("message"));
				al.add(dd);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		closeConnection();
		return al;
	}

	public int DeleteEnquiry(String name) {
		int i = 0;
		Connection con = null;
		try {
			con = createConnection();
			PreparedStatement ps = con.prepareStatement("delete from contact where name=?");
			ps.setString(1, name);
			i = ps.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}

		closeConnection();
		return i;
	}
	
	public void closeConnection() {
		Connection con = null;
	try {
		con = createConnection();
		con.close();
	} catch (SQLException e) {
	e.printStackTrace();
	}
}

	public int RegisterClient(String username, String password, String logtype) {
	
		
		
		int i = 0;
		Connection con = null;
		try {
			con = createConnection();
			PreparedStatement ps = con.prepareStatement("insert into login values(?,?,?)");
			ps.setString(1,username);
			ps.setString(2, password);
			ps.setString(3, logtype);
			

			i = ps.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}

		closeConnection();
		return i;
	}
	
	public ArrayList<RegisterClient> getAllClients() {
		ArrayList<RegisterClient> al2 = new ArrayList<RegisterClient>();
		Connection con = null;
		try {
			con = createConnection();
			PreparedStatement ps = con.prepareStatement("select *from login");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				RegisterClient rj = new RegisterClient(rs.getString("username"), rs.getString("password"), rs.getString("logtype"));
				al2.add(rj);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
	closeConnection();
		return al2;
	}
	
	public ClientDetails clientStatus(String name) {
	
		ClientDetails cr=null;
		Connection con = null;
		try {
			con = createConnection();
			PreparedStatement ps = con.prepareStatement("select *from contact where name=?");
			ps.setString(1, name);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				cr = new ClientDetails(rs.getString("name"), rs.getString("email"), rs.getString("workmode"),
						rs.getString("message"));

		}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		closeConnection();
		return cr;
	}

	public int updateClientContact(ClientDetails cpp) {
	
		int i = 0;
		Connection con = null;
		try {
			con = createConnection();
			PreparedStatement ps = con
					.prepareStatement("update contact set email=?,workmode=?,message=? where name=?");
			ps.setString(1, cpp.getEmail());
			ps.setString(2, cpp.getMode());
			ps.setString(3, cpp.getMessage());
			ps.setString(4,cpp.getName());

			i = ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		closeConnection();
		return i;
	}

	public RegisterClient CheckClient(String user) {
		RegisterClient rc=null;
		Connection con = null;
		try {
			con = createConnection();
			PreparedStatement ps = con.prepareStatement("select *from login where username=?");
			ps.setString(1, user);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				rc = new RegisterClient(rs.getString("username"), rs.getString("password"), rs.getString("logtype"));

		}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		closeConnection();
		return rc;
	}

	public int updateClientPassword(RegisterClient rc) {
	
		int i = 0;
		Connection con = null;
		try {
			con = createConnection();
			PreparedStatement ps = con
					.prepareStatement("update login set password=? where username=?");
			ps.setString(1, rc.getPassword());
			ps.setString(2, rc.getUsername());

			i = ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		closeConnection();
		return i;
	}

	public int DeleteClient(String username) {
		int i = 0;
		Connection con = null;
		try {
			con = createConnection();
			PreparedStatement ps = con.prepareStatement("delete from login where username=?");
			ps.setString(1, username);
			i = ps.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}

		closeConnection();
		return i;
	}
	
}
