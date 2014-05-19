package com.j1987.coffeeroo.web;
import com.j1987.coffeeroo.domain.JTour;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/jtours")
@Controller
@RooWebScaffold(path = "jtours", formBackingObject = JTour.class)
public class JTourController {
}
