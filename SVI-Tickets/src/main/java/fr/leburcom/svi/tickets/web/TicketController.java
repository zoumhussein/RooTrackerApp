package fr.leburcom.svi.tickets.web;
import fr.leburcom.svi.tickets.Ticket;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/tickets")
@Controller
@RooWebScaffold(path = "tickets", formBackingObject = Ticket.class)
public class TicketController {
}
