package com.j1987.coffeeroo.web;
import com.j1987.coffeeroo.domain.JSupplier;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/jsuppliers")
@Controller
@RooWebScaffold(path = "jsuppliers", formBackingObject = JSupplier.class)
public class JSupplierController {
}
