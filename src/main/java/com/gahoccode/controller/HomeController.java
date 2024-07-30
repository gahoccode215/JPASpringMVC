package com.gahoccode.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.gahoccode.pojo.Student;
import com.gahoccode.service.IStudentService;
import com.gahoccode.service.StudentService;

@Controller
public class HomeController {

	private IStudentService iStudentService;

	public HomeController() {
		iStudentService = new StudentService("JPAs");
	}

	@RequestMapping(value = "/")
	public ModelAndView test(HttpServletResponse response) throws IOException {
		ModelAndView model = new ModelAndView("home");
		List<Student> studentList = iStudentService.findAll();
		model.addObject("studentList", studentList);
		System.out.println(studentList);
		return model;
	}

	@RequestMapping(value = "/manageStudent")
	public String manageStudent(HttpServletRequest request) throws IOException {

		try {
			int studentID = 0;
			String type = request.getParameter("btnManageStudent");
			if (request.getParameter("txtID") != null) {
				studentID = Integer.parseInt(request.getParameter("txtID"));
			}
			String firstName = request.getParameter("txtFirstName");
			String lastName = request.getParameter("txtLastName");
			int mark = Integer.parseInt(request.getParameter("txtMark"));
			Student student = new Student(firstName, lastName, mark);
			switch (type) {
			case "add":
				iStudentService.save(student);
				break;
			case "update":
				student.setId(studentID);
				iStudentService.update(student);
				break;
			case "delete":
				iStudentService.delete(studentID);
				break;
			default:
				break;
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return "redirect:/";
	}

}
