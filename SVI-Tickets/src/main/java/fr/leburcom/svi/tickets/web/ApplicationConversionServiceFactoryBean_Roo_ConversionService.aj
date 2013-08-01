// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package fr.leburcom.svi.tickets.web;

import fr.leburcom.svi.tickets.Client;
import fr.leburcom.svi.tickets.Developper;
import fr.leburcom.svi.tickets.Ticket;
import fr.leburcom.svi.tickets.web.ApplicationConversionServiceFactoryBean;
import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.core.convert.converter.Converter;
import org.springframework.format.FormatterRegistry;

privileged aspect ApplicationConversionServiceFactoryBean_Roo_ConversionService {
    
    declare @type: ApplicationConversionServiceFactoryBean: @Configurable;
    
    public Converter<Client, String> ApplicationConversionServiceFactoryBean.getClientToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<fr.leburcom.svi.tickets.Client, java.lang.String>() {
            public String convert(Client client) {
                return new StringBuilder().append(client.getName()).append(' ').append(client.getFirstname()).append(' ').append(client.getEmail()).append(' ').append(client.getPassword()).toString();
            }
        };
    }
    
    public Converter<Long, Client> ApplicationConversionServiceFactoryBean.getIdToClientConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, fr.leburcom.svi.tickets.Client>() {
            public fr.leburcom.svi.tickets.Client convert(java.lang.Long id) {
                return Client.findClient(id);
            }
        };
    }
    
    public Converter<String, Client> ApplicationConversionServiceFactoryBean.getStringToClientConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, fr.leburcom.svi.tickets.Client>() {
            public fr.leburcom.svi.tickets.Client convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Client.class);
            }
        };
    }
    
    public Converter<Developper, String> ApplicationConversionServiceFactoryBean.getDevelopperToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<fr.leburcom.svi.tickets.Developper, java.lang.String>() {
            public String convert(Developper developper) {
                return new StringBuilder().append(developper.getName()).append(' ').append(developper.getFirstname()).append(' ').append(developper.getEmail()).append(' ').append(developper.getPassword()).toString();
            }
        };
    }
    
    public Converter<Long, Developper> ApplicationConversionServiceFactoryBean.getIdToDevelopperConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, fr.leburcom.svi.tickets.Developper>() {
            public fr.leburcom.svi.tickets.Developper convert(java.lang.Long id) {
                return Developper.findDevelopper(id);
            }
        };
    }
    
    public Converter<String, Developper> ApplicationConversionServiceFactoryBean.getStringToDevelopperConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, fr.leburcom.svi.tickets.Developper>() {
            public fr.leburcom.svi.tickets.Developper convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Developper.class);
            }
        };
    }
    
    public Converter<Ticket, String> ApplicationConversionServiceFactoryBean.getTicketToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<fr.leburcom.svi.tickets.Ticket, java.lang.String>() {
            public String convert(Ticket ticket) {
                return new StringBuilder().append(ticket.getSubject()).append(' ').append(ticket.getComponent()).append(' ').append(ticket.getDescription()).append(' ').append(ticket.getDetectionDate()).toString();
            }
        };
    }
    
    public Converter<Long, Ticket> ApplicationConversionServiceFactoryBean.getIdToTicketConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, fr.leburcom.svi.tickets.Ticket>() {
            public fr.leburcom.svi.tickets.Ticket convert(java.lang.Long id) {
                return Ticket.findTicket(id);
            }
        };
    }
    
    public Converter<String, Ticket> ApplicationConversionServiceFactoryBean.getStringToTicketConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, fr.leburcom.svi.tickets.Ticket>() {
            public fr.leburcom.svi.tickets.Ticket convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Ticket.class);
            }
        };
    }
    
    public void ApplicationConversionServiceFactoryBean.installLabelConverters(FormatterRegistry registry) {
        registry.addConverter(getClientToStringConverter());
        registry.addConverter(getIdToClientConverter());
        registry.addConverter(getStringToClientConverter());
        registry.addConverter(getDevelopperToStringConverter());
        registry.addConverter(getIdToDevelopperConverter());
        registry.addConverter(getStringToDevelopperConverter());
        registry.addConverter(getTicketToStringConverter());
        registry.addConverter(getIdToTicketConverter());
        registry.addConverter(getStringToTicketConverter());
    }
    
    public void ApplicationConversionServiceFactoryBean.afterPropertiesSet() {
        super.afterPropertiesSet();
        installLabelConverters(getObject());
    }
    
}
