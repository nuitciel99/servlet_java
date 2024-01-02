package service;

import java.util.List;

import dao.StudentDao;
import domain.Student;

public class StudentService {
	private StudentDao dao = new StudentDao();
	
	public List<Student> getList(){
		return dao.getList();
	}
}
