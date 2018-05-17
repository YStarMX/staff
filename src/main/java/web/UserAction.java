package web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import service.UserService;
import vo.User;
import domain.UserVo;

@Controller
public class UserAction {
	@Autowired
	private UserService userService;

	@RequestMapping(value = "/index")
	public String index(Model model) {
		List<User> userList = userService.allUsers();
		model.addAttribute("userList", userList);
		return "index";
	}

	@RequestMapping(value = "/delUser.htm")
	public String delUser(Model model, Integer id) {
		userService.delUser(id);
		return "forward:index";
	}

	@RequestMapping(value = "/toModUser.htm")
	public String toModUser(Model model, Integer id) {
		User user = userService.getUser(id);
		model.addAttribute("user", user);
		return "modUser";
	}

	@RequestMapping(value = "/modUser.htm")
	public String modUser(Model model, User user) {
		userService.modUser(user);
		return "forward:index";
	}
	
	@RequestMapping(value = "/toAddUser.htm")
	public String toAddUser() {
		return "addUser";
	}
	
	@RequestMapping(value = "/addUser.htm")
	public String addUser(Model model, User user) {
		userService.addUser(user);
		return "forward:index";
	}
	
	@RequestMapping(value = "/qryUser.htm")
	public String qryUser(Model model, User user) {
		List<User> userList = userService.getUserSelective(user);
		model.addAttribute("userList", userList);
		model.addAttribute("user", user);
		return "index";
	}
	
}
