package com.j1987.coffeeroo.web;
import com.j1987.coffeeroo.domain.JSubmissionForApproval;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/jsubmissionforapprovals")
@Controller
@RooWebScaffold(path = "jsubmissionforapprovals", formBackingObject = JSubmissionForApproval.class)
public class JSubmissionForApprovalController {
}
