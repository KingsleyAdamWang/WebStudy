package bean;

import javax.ejb.Timeout;
import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

/**
 * Created by mengf on 2017/3/20 0020.
 */

@Entity
@Table(name = "user_log")
public class UserLog implements Serializable{
    @Id
    private long id;

    @ManyToOne
    private User user;

    @Temporal(value = TemporalType.TIMESTAMP)
    private Date time;

    public UserLog() {
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
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
