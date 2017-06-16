package com.model;

import com.com.beans.Patient;

import java.sql.*;
import java.util.ArrayList;

/**
 * Created by anand38 on 16/6/17.
 */
public class Account {
    String user = "root";
    String pass="";
    String url="jdbc:mysql://localhost:3306/";
    String dbname="hospital";
    String driver="com.mysql.jdbc.Driver";
    Connection con;
    private void dbConnect() throws ClassNotFoundException, SQLException {
        Class.forName(driver);
        con = DriverManager.getConnection(url+dbname,user,pass);
    }
    private void dbClose() throws SQLException{
        con.close();
    }


    public void register_doctor(String userid, String name, String specialization, String experience, String address, String contact, String email, String time, String no_of_patients, String password) throws SQLException, ClassNotFoundException {
        dbConnect();
        String sql="insert into doctor(userid,name,specialization,experience,address,contact,email,time,no_of_patients,password)" +
                "values(?,?,?,?,?,?,?,?,?,?)";
        PreparedStatement pstmt=con.prepareStatement(sql);
        pstmt.setString(1,userid);
        pstmt.setString(2,name);
        pstmt.setString(3,specialization);
        pstmt.setString(4,experience);
        pstmt.setString(5,address);
        pstmt.setString(6,contact);
        pstmt.setString(7,email);
        pstmt.setString(8,time);
        pstmt.setString(9,no_of_patients);
        pstmt.setString(10,password);
        pstmt.executeUpdate();
        dbClose();
    }

    public boolean check_userid_availability(String userid) throws SQLException, ClassNotFoundException {
        dbConnect();
        int count=0;
        String sql="select count(*) as count from doctor where userid=?";
        PreparedStatement pstmt=con.prepareStatement(sql);
        pstmt.setString(1,userid);
        ResultSet rst=pstmt.executeQuery();
        while (rst.next()){
            count=rst.getInt("count");
        }
        dbClose();
        if (count==1){
            return false;
        }else
            return true;
    }

    public boolean doLogin(String userid, String password) throws SQLException, ClassNotFoundException {
        dbConnect();
        int count=0;
        String sql="select count(*) as count from doctor where userid=? and password=?";
        PreparedStatement pstmt=con.prepareStatement(sql);
        pstmt.setString(1,userid);
        pstmt.setString(2,password);
        ResultSet rst=pstmt.executeQuery();
        while (rst.next()){
            count=rst.getInt("count");
        }
        dbClose();
        if (count==0)
            return false;
        else return true;
    }

    public boolean check_slot_availability(String doctor, String appointment_date) throws SQLException, ClassNotFoundException {
        dbConnect();
        int count=0;
        String sql="select count(*) as count from patient where doctor=? and appointment_date=?";
        PreparedStatement pstmt=con.prepareStatement(sql);
        pstmt.setString(1,doctor);
        pstmt.setString(2,appointment_date);
        ResultSet rst=pstmt.executeQuery();
        while (rst.next()){
            count=rst.getInt("count");
        }
        System.out.println("Count is:"+count);
        int max=0;
        String max_no_of_patient_sql="select no_of_patients from doctor where specialization=?";
        PreparedStatement pstmt1=con.prepareStatement(max_no_of_patient_sql);
        pstmt1.setString(1,doctor);
        ResultSet rst1=pstmt1.executeQuery();
        while (rst1.next()){
            max=Integer.parseInt(rst1.getString("no_of_patients"));
        }
        System.out.println("Max is:"+max);
        dbClose();

        if (count<max){
            return true;
        }
        else
            return false;
    }

    public void set_appointment(String name, String dob, String address, String contact, String email, String gender, String doctor, String appointment_date) throws SQLException, ClassNotFoundException {
        dbConnect();
        String sql="insert into patient(name,dob,address,contact,email,gender,doctor,appointment_date) VALUES (?,?,?,?,?,?,?,?)";
        PreparedStatement  pstmt=con.prepareStatement(sql);
        pstmt.setString(1,name);
        pstmt.setString(2,dob);
        pstmt.setString(3,address);
        pstmt.setString(4,contact);
        pstmt.setString(5,email);
        pstmt.setString(6,gender);
        pstmt.setString(7,doctor);
        pstmt.setString(8,appointment_date);
        pstmt.executeUpdate();
        dbClose();
    }

    public ArrayList<Patient> get_patients_for_today(String userid,String date) throws SQLException, ClassNotFoundException {
        dbConnect();
        String sql="select name,dob,email,gender from patient where doctor=(select specialization from doctor where userid=?) and appointment_date=?";
        PreparedStatement pstmt=con.prepareStatement(sql);
        pstmt.setString(1,userid);
        pstmt.setString(2,date);
        ResultSet rst=pstmt.executeQuery();
        ArrayList <Patient> list=new ArrayList<>();
        while (rst.next()){
            Patient p=new Patient();
            p.setName(rst.getString("name"));
            p.setDob(rst.getString("dob"));
            p.setEmail(rst.getString("email"));
            p.setGender(rst.getString("gender"));
            list.add(p);
            p=null;
        }
        dbClose();
        return list;
    }
}
