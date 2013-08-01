package fr.leburcom.svi.tickets.web;
import fr.leburcom.svi.tickets.Developper;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/developpers")
@Controller
@RooWebScaffold(path = "developpers", formBackingObject = Developper.class)
public class DevelopperController {
}
