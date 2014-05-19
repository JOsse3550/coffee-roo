// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.j1987.coffeeroo.web;

import com.j1987.coffeeroo.domain.JUser;
import com.j1987.coffeeroo.web.JUserController;
import java.util.Arrays;
import java.util.Collection;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

privileged aspect JUserController_Roo_GvNIXReport {
    
    @RequestMapping(value = "/reports/userreportlist", params = "form", method = RequestMethod.GET)
    public String JUserController.generateUserreportlistForm(Model uiModel) {
        String[] reportFormats =  {"pdf"};
        Collection<String> reportFormatsList = Arrays.asList(reportFormats);
        uiModel.addAttribute("report_formats", reportFormatsList);
        return "jusers/userreportlist";
    }
    
    @RequestMapping(value = "/reports/userreportlist", method = RequestMethod.GET)
    public String JUserController.generateUserreportlist(@RequestParam(value = "format", required = true) String format, Model uiModel) {
        if ( null == format || format.length() <= 0 ) {
                uiModel.addAttribute("error", "message_format_required");
                return "jusers/userreportlist";
        }
        final String REGEX = "(pdf)";
        Pattern pattern = Pattern.compile(REGEX, Pattern.CASE_INSENSITIVE);
        Matcher matcher = pattern.matcher(format);
        if ( !matcher.matches() ) {
                uiModel.addAttribute("error", "message_format_invalid");
                return "jusers/userreportlist";
        }
        Collection<JUser> dataSource = JUser.findJUserEntries(0, 10);
        if (dataSource.isEmpty()) {
                uiModel.addAttribute("error", "message_emptyresults_noreportgeneration");
                return "jusers/userreportlist";
        }
        uiModel.addAttribute("format", format);
        uiModel.addAttribute("title", "USERREPORTLIST");
        uiModel.addAttribute("userreportlistList", dataSource);
        return "juser_userreportlist";
    }
    
}
