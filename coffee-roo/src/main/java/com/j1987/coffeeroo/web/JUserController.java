package com.j1987.coffeeroo.web;
import com.j1987.coffeeroo.domain.JUser;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/jusers")
@Controller
@RooWebScaffold(path = "jusers", formBackingObject = JUser.class)
public class JUserController {
}
