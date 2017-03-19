package bean;

import javax.persistence.*;
import java.io.Serializable;

/**
 * Created by mengf on 2017/3/20 0020.
 */

@Entity
@Table(name = "notice")
public class Notice implements Serializable{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    /**
     * 机构的还是用户的
     */
    private boolean userType;

    /**
     * 消息内容
     */
    @ManyToOne(cascade = CascadeType.DETACH)
    private Course course;

    /**
     * 消息是不是被处理
     */
    private boolean undeal;

    public Notice() {
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public boolean isUserType() {
        return userType;
    }

    public void setUserType(boolean userType) {
        this.userType = userType;
    }

    public Course getCourse() {
        return course;
    }

    public void setCourse(Course course) {
        this.course = course;
    }

    public boolean isUndeal() {
        return undeal;
    }

    public void setUndeal(boolean undeal) {
        this.undeal = undeal;
    }
}
