package com.oracle.employee.beans;

/**
 * Created by taewan on 2016. 12. 26..
 */
public class Applicant {
    private String name;
    private String email;
    private String address;
    private String sex;
    private String department;
    private String phone;
    private String birth;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getBirth() {
        return birth;
    }

    public void setBirth(String birth) {
        this.birth = birth;
    }


    @Override
    public String toString() {
        return "Applicant{" +
                "name='" + name + '\'' +
                ", email='" + email + '\'' +
                ", address='" + address + '\'' +
                ", sex='" + sex + '\'' +
                ", department='" + department + '\'' +
                ", phone='" + phone + '\'' +
                ", birth='" + birth + '\'' +
                '}';
    }
}
