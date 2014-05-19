package com.j1987.coffeeroo.web;
import com.j1987.coffeeroo.domain.JLocalization;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/jlocalizations")
@Controller
@RooWebScaffold(path = "jlocalizations", formBackingObject = JLocalization.class)
public class JLocalizationController {
}
