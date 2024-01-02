package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import domain.Student;

public class StudentDao {
	public List<Student> getList(){
		List<Student> list = new ArrayList<Student>();
		
		// Connection
		// Statement(SQL) : 
		// ResultSet
		// 가공 >> list
		
		// getConnection : Creates a Statement object for sending SQL statements to the database
		// executeQuery : Executes the given SQL statement, which returns a single ResultSet object
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/xe", "sample", "1234");
			stmt = conn.createStatement();
			rs = stmt.executeQuery("SELECT STUDNO, NAME, GRADE, BIRTHDATE, DEPTNO, PROFNO FROM STUDENT");
			while(rs.next()) {
				int idx = 1;
				Student s = Student
						.builder()
						.studno(rs.getLong(idx++))
						.name(rs.getString(idx++))
						.grade(rs.getString(idx++))
						.birthdate(rs.getString(idx++))
						.deptno(rs.getLong(idx++))
						.profno(rs.getLong(idx++))
						.build();
				list.add(s);
			}
			rs.close();
			stmt.close();
			conn.close();
		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}
		
		return list;
	}
	public static void main(String[] args) {
		new StudentDao().getList().forEach(s->System.out.println(s));
	}
}
