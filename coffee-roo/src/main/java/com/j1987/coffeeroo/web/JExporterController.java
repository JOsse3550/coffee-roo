package com.j1987.coffeeroo.web;
import com.j1987.coffeeroo.domain.JExporter;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/jexporters")
@Controller
@RooWebScaffold(path = "jexporters", formBackingObject = JExporter.class)
public class JExporterController {
}
