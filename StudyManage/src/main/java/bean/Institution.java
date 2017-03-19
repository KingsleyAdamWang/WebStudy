package bean;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;
import java.util.List;

/**
 * Created by mengf on 2017/3/19 0019.
 */
@Entity
@Table(name = "institution")
public class Institution implements Serializable{
    @Id
    private int id;

    @Column(length = 20)
    private String password;

    @Column(length = 100)
    private String name;

    @Column(length = 20)
    private String ownerName;

    @Column(length = 20)
    private String tel;

    @Column(length = 30)
    private String mail;

    private String headPath;

    @Column(length = 30)
    private String bankCardID;

    private double balance;

    @Basic(fetch = FetchType.LAZY)
    private String comment;

    @Temporal(value = TemporalType.DATE)
    private Date createDate;

    @OneToMany(fetch = FetchType.LAZY,cascade = {CascadeType.ALL})
    private List<Course> courses;

    @OneToMany(fetch = FetchType.LAZY,cascade = {CascadeType.ALL})
    private List<InstitutionLog> logs;

    /********constructor********************************************/
    public Institution(){

    }

    /****************getter and setter**********************/
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getBankCardID() {
        return bankCardID;
    }

    public void setBankCardID(String bankCardID) {
        this.bankCardID = bankCardID;
    }

    public double getBalance() {
        return balance;
    }

    public void setBalance(double balance) {
        this.balance = balance;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getOwnerName() {
        return ownerName;
    }

    public void setOwnerName(String ownerName) {
        this.ownerName = ownerName;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public String getHeadPath() {
        return headPath;
    }

    public void setHeadPath(String headPath) {
        this.headPath = headPath;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public List<Course> getCourses() {
        return courses;
    }

    public void setCourses(List<Course> courses) {
        this.courses = courses;
    }

    public List<InstitutionLog> getLogs() {
        return logs;
    }

    public void setLogs(List<InstitutionLog> logs) {
        this.logs = logs;
    }
}
