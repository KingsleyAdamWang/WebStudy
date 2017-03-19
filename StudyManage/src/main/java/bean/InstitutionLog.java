package bean;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

/**
 * Created by mengf on 2017/3/20 0020.
 */

@Entity
@Table(name = "institution_log")
public class InstitutionLog implements Serializable{
    @Id
    private long id;

    @ManyToOne
    private Institution institution;

    @Temporal(value = TemporalType.TIMESTAMP)
    private Date time;

    public InstitutionLog() {
    }

    public Institution getInstitution() {
        return institution;
    }

    public void setInstitution(Institution institution) {
        this.institution = institution;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }
}
