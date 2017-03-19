package bean;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;
import java.util.List;

/**
 * Created by mengf on 2017/3/18 0018.
 */
@Entity
@Table(name = "user")
public class User implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id ;

    @Column(length = 20)
    private String name;

    private String password;

    private String mail;

    @Column(length = 20)
    private String tel;

    private String headPath;

    @Temporal(value = TemporalType.DATE)
    private Date birth;

    @Basic(fetch = FetchType.LAZY)
    private String comment;

    @Column(length = 40)
    @Basic(fetch = FetchType.LAZY)
    private String bankCardId;

    @Basic(fetch = FetchType.LAZY)
    private double balance;

    private boolean isVIP;

    @Temporal(value = TemporalType.TIMESTAMP)
    private Date vipDue;

    @ManyToMany(fetch = FetchType.LAZY,targetEntity = Course.class)
    @JoinTable(name="course_user",
            joinColumns = {@JoinColumn(name="uid")},
            inverseJoinColumns = {@JoinColumn(name = "cid")})
    private List<Course> courses;

    @OneToMany(fetch = FetchType.LAZY,cascade = CascadeType.ALL)
    private List<UserLog> logs;

    /********constructor********************************************/
    public User() {
    }

    /****************getter and setter**********************/
    public List<UserLog> getLogs() {
        return logs;
    }

    public void setLogs(List<UserLog> logs) {
        this.logs = logs;
    }

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

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getHeadPath() {
        return headPath;
    }

    public void setHeadPath(String headPath) {
        this.headPath = headPath;
    }

    public Date getBirth() {
        return birth;
    }

    public void setBirth(Date birth) {
        this.birth = birth;
    }

    public List<Course> getCourses() {
        return courses;
    }

    public void setCourses(List<Course> courses) {
        this.courses = courses;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public String getBankCardId() {
        return bankCardId;
    }

    public void setBankCardId(String bankCardId) {
        this.bankCardId = bankCardId;
    }

    public double getBalance() {
        return balance;
    }

    public void setBalance(double balance) {
        this.balance = balance;
    }

    public boolean isVIP() {
        return isVIP;
    }

    public void setVIP(boolean VIP) {
        isVIP = VIP;
    }

    public Date getVipDue() {
        return vipDue;
    }

    public void setVipDue(Date vipDue) {
        this.vipDue = vipDue;
    }
}
