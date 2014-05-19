package com.j1987.coffeeroo.web;
import com.j1987.coffeeroo.domain.JFactory;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/jfactorys")
@Controller
@RooWebScaffold(path = "jfactorys", formBackingObject = JFactory.class)
public class JFactoryController {
}
