package com.j1987.coffeeroo.web;
import com.j1987.coffeeroo.domain.JDealer;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/jdealers")
@Controller
@RooWebScaffold(path = "jdealers", formBackingObject = JDealer.class)
public class JDealerController {
}
