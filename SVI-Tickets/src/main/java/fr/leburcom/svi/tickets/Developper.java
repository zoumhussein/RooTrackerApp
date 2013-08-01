package fr.leburcom.svi.tickets;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.OneToMany;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class Developper {

    /**
     */
    @NotNull
    @Size(max = 50)
    private String name;

    /**
     */
    @NotNull
    @Size(max = 50)
    private String firstname;

    /**
     */
    @NotNull
    @Size(max = 100)
    private String email;

    /**
     */
    @NotNull
    @Size(max = 255)
    private String password;

    /**
     */
    @OneToMany(cascade = CascadeType.ALL)
    private Set<Ticket> tickets = new HashSet<Ticket>();
}
