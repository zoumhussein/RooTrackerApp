// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package fr.leburcom.svi.tickets;

import fr.leburcom.svi.tickets.Developper;
import fr.leburcom.svi.tickets.Ticket;
import java.util.Set;

privileged aspect Developper_Roo_JavaBean {
    
    public String Developper.getName() {
        return this.name;
    }
    
    public void Developper.setName(String name) {
        this.name = name;
    }
    
    public String Developper.getFirstname() {
        return this.firstname;
    }
    
    public void Developper.setFirstname(String firstname) {
        this.firstname = firstname;
    }
    
    public String Developper.getEmail() {
        return this.email;
    }
    
    public void Developper.setEmail(String email) {
        this.email = email;
    }
    
    public String Developper.getPassword() {
        return this.password;
    }
    
    public void Developper.setPassword(String password) {
        this.password = password;
    }
    
    public Set<Ticket> Developper.getTickets() {
        return this.tickets;
    }
    
    public void Developper.setTickets(Set<Ticket> tickets) {
        this.tickets = tickets;
    }
    
}
