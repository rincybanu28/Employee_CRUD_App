package EmployeeCrudApp.controller;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import EmployeeCrudApp.dao.employeeDao;
import EmployeeCrudApp.model.Employee;

@Controller
public class MainController {
	
	@Autowired
	private employeeDao employeeDao;
	
	@RequestMapping("/")
	public String home(Model m)
	{
		List<Employee> employees = employeeDao.getEmployees();
		m.addAttribute("employees", employees);
		return "index";
	}
	
	
	//show add employee form
	@RequestMapping("/add-employee")
	public String addEmployee(Model m)
	{
		m.addAttribute("title","Add Employee");
		return "add_employee_form";
	}

	
	
	//handle add employee form
	@RequestMapping(path = "/handle-employee",method = RequestMethod.POST)
	public RedirectView handleEmployee(@ModelAttribute Employee employee,HttpServletRequest request) {
		System.out.println(employee);
		employeeDao.createEmployee(employee);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath() + "/");
		return redirectView;
	}
	
	
	//delete handler
	@RequestMapping("/delete/{employeeId}")
	public RedirectView deleteEmployee(@PathVariable("employeeId") int employeeId, HttpServletRequest request) 
	{
		this.employeeDao.deleteEmployee(employeeId);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath() + "/");
		return redirectView;
	}
	
	
	//update
	@RequestMapping("/update/{employeeId}")
	public String updateForm(@PathVariable("employeeId") int eid, Model model)
	{
		Employee employee = this.employeeDao.getEmployee(eid);
		model.addAttribute("employee", employee);
		return "update_form";
	}
	
	
}
