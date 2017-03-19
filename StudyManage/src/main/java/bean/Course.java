package bean;

import org.hibernate.annotations.*;

import javax.persistence.*;
import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.Table;
import java.io.Serializable;
import java.util.Date;
import java.util.List;

/**
 * Created by mengf on 2017/3/19 0019.
 */
@Entity
@Table(name="course")
public class Course implements Serializable{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(length = 40)
    private String name;

    @ManyToMany(fetch=FetchType.LAZY,targetEntity = User.class,cascade = {CascadeType.PERSIST,CascadeType.MERGE, CascadeType.REFRESH})
    @JoinTable(name="course_user",
            joinColumns = {@JoinColumn(name="cid")},
            inverseJoinColumns = {@JoinColumn(name = "uid")})
    private List<User> users;

    private Double price;

    @Column(length = 20)
    private String teacher;

    @Temporal(value = TemporalType.DATE)
    private Date start;

    @Temporal(value = TemporalType.DATE)
    private Date end;

    /**
     * yes or no 经没经过审批
     */
    private boolean isChecked;

    @ManyToOne
    @JoinColumn(name="institution_id")
    private Institution institution;

    /********constructor********************************************/
    public Course() {
    }

    /****************getter and setter**********************/
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public List<User> getUsers() {
        return users;
    }

    public void setUsers(List<User> users) {
        this.users = users;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public String getTeacher() {
        return teacher;
    }

    public void setTeacher(String teacher) {
        this.teacher = teacher;
    }

    public Date getStart() {
        return start;
    }

    public void setStart(Date start) {
        this.start = start;
    }

    public Date getEnd() {
        return end;
    }

    public void setEnd(Date end) {
        this.end = end;
    }

    public boolean isChecked() {
        return isChecked;
    }

    public void setChecked(boolean checked) {
        isChecked = checked;
    }

    public Institution getInstitution() {
        return institution;
    }

    public void setInstitution(Institution institution) {
        this.institution = institution;
    }
}
