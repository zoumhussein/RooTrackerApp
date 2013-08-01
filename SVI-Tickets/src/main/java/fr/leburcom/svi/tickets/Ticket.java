package fr.leburcom.svi.tickets;
import java.util.Date;
import javax.persistence.CascadeType;
import javax.persistence.OneToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.Enumerated;
import javax.persistence.ManyToOne;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class Ticket {

    /**
     */
    @NotNull
    private String subject;

    /**
     */
    @NotNull
    private String component;

    /**
     */
    @NotNull
    private String description;

    /**
     */
    @NotNull
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date detectionDate;

    /**
     */
    @Enumerated
    private TicketStatus status;

    /**
     */
    @ManyToOne
    private Client client;

    /**
     */
    @ManyToOne
    private Developper developper;
    
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date correctionDate;
}
