package springjdbc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import springjdbc.dao.Database;
import springjdbc.model.FormModel;

@Controller
public class FormController {
	@Autowired
	Database dao;

	@RequestMapping("/")
	public String form(Model m) {
		System.out.println("inside controller");
		m.addAttribute("user", new FormModel());
		return "index";
	}

	@RequestMapping(value = "/submitForm", method = RequestMethod.POST)
	public String save(@ModelAttribute FormModel user) {
		System.out.println("coming to controller" + user.toString());
		dao.save(user);
		return "redirect:/success";
	}

	@RequestMapping("/success")
	public String success(Model m) {
		System.out.println("success");
		List<FormModel> list = dao.getAllData();
		
		m.addAttribute("list", list);
		return "success";
	}

	@RequestMapping(value = "/deleteemp/{name}", method = RequestMethod.GET)
	public String delete(@PathVariable String name) {
		dao.delete(name);
		return "redirect:/success";
	}

	@RequestMapping(value = "/editemp/{name}")
	public String editemp(@PathVariable String name,Model m) {
		FormModel user = dao.getEmpById(name);
		m.addAttribute("user", user);
		return "edit";
	}
	@RequestMapping(value="/editsave",method = RequestMethod.POST)
	public String editsave(@ModelAttribute("user")FormModel user) {
		System.out.println(user.toString());
		dao.update(user);
		return "redirect:/success";
}

}
