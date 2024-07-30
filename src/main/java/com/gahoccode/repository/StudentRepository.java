package com.gahoccode.repository;

import java.util.List;

import com.gahoccode.dao.StudentDAO;
import com.gahoccode.pojo.Student;

public class StudentRepository implements IStudentRepository {

	public StudentDAO studentDAO = null;

	public StudentRepository(String fileConfig) {
		studentDAO = new StudentDAO(fileConfig);
	}

	@Override
	public List<Student> findAll() {
		return studentDAO.getStudents();
	}

	@Override
	public void save(Student student) {
		studentDAO.save(student);
	}

	@Override
	public void delete(int studentID) {
		studentDAO.delete(studentID);
	}

	@Override
	public Student findById(int studentID) {
		return studentDAO.findById(studentID);
	}

	@Override
	public void update(Student student) {
		studentDAO.update(student);
	}

}
