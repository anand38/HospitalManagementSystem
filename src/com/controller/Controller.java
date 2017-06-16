package com.controller;

import com.com.beans.Patient;
import com.model.Account;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

/**
 * Created by anand38 on 16/6/17.
 */
public class Controller extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Account account=new Account();

        String action=request.getParameter("action");
        if (action.equalsIgnoreCase("from_doctor_login")){
            String userid=request.getParameter("userid");
            String password=request.getParameter("password");
            //check for userid and password
            boolean status=false;
            try {
                status=account.doLogin(userid,password);
            }catch (Exception e){
                e.printStackTrace();
            }
            if (status){
                System.out.println("here");
                //get todays date
                Date d = new Date();
                String modifiedDate = new SimpleDateFormat("yyyy-MM-dd").format(d);
                ArrayList<Patient> list=new ArrayList();
                try {
                    list = new Account().get_patients_for_today(userid,modifiedDate);
                }catch (Exception e){
                    e.printStackTrace();
                }
                request.setAttribute("list",list);
                request.getRequestDispatcher("Doctor/appointments.jsp").forward(request,response);
            }
        }
        if (action.equalsIgnoreCase("frompostjob")){
            String userid=request.getParameter("userid");
            String name=request.getParameter("name");
            String specialization=request.getParameter("specialization");
            String experience=request.getParameter("experience");
            String address=request.getParameter("address");
            String contact=request.getParameter("contact");
            String email=request.getParameter("email");
            String time=request.getParameter("time");
            String no_of_patients=request.getParameter("no_of_patients");
            String password=request.getParameter("password");
            //System.out.println("Prints: "+userid+name+specialization+experience+address+contact+email+time+no_of_patients+password);

            boolean status=false;
            try {
            status = account.check_userid_availability(userid);
            if (!status){
                response.setContentType("text/plain");
                response.getWriter().write("false");
            }else {
                response.setContentType("text/plain");
                response.getWriter().write("true");
                account.register_doctor(userid, name, specialization, experience, address, contact, email, time, no_of_patients, password);
            }
            }catch (Exception e){
                e.printStackTrace();
            }
         }
         if (action.equalsIgnoreCase("from_patient_appointment")) {
             String name = request.getParameter("name");
             String dob = request.getParameter("dob");
             String address = request.getParameter("address");
             String contact = request.getParameter("contact");
             String email = request.getParameter("email");
             String gender = request.getParameter("gender");
             String doctor = request.getParameter("doctor"); // this is not doctor type
             String appointment_date = request.getParameter("appointment_date");
             //System.out.println("Prints :"+name+dob+address+contact+email+gender+doctor_name+appointment_date);

             //get todays date
             Date d = new Date();
             String modifiedDate = new SimpleDateFormat("yyyy-MM-dd").format(d);
             System.out.println("apt date:"+appointment_date);
             System.out.println("Todays date:"+modifiedDate);
             String aptdate[]=appointment_date.split("-");
             String today_date[]=modifiedDate.split("-");
             if (Integer.parseInt(aptdate[0])>=Integer.parseInt(today_date[0])){
                if(Integer.parseInt(aptdate[1])>=Integer.parseInt(today_date[1])){
                    if (Integer.parseInt(aptdate[2])>=Integer.parseInt(today_date[2])){
                        if (Integer.parseInt(aptdate[2])-Integer.parseInt(today_date[2]) >1){
                            response.setContentType("text/plain");
                            response.getWriter().write("3");
                         }else if(Integer.parseInt(aptdate[2])-Integer.parseInt(today_date[2]) ==0){
                            // if you are here means patient selected  todays date
                            //now check if appointments slots are available
                            boolean status=false;
                            try {
                                status=account.check_slot_availability(doctor,appointment_date);
                                if (status){
                                    //means slot is available
                                    account.set_appointment(name,dob,address,contact,email,gender,doctor,appointment_date);
                                    response.setContentType("text/plain");
                                    response.getWriter().write("1");  //1 means success
                                }else {
                                    response.setContentType("text/plain");
                                    response.getWriter().write("4");  //4 means no slots available for today
                                }
                            }catch (Exception e){
                                e.printStackTrace();
                            }

                        }else{
                            // if you are here means patient selected  tomorrows date
                            //now check if appointments slots are available
                            boolean status=false;
                            try {
                                status=account.check_slot_availability(doctor,appointment_date);
                                if (status){
                                    //means slot is available
                                    account.set_appointment(name,dob,address,contact,email,gender,doctor,appointment_date);
                                    response.setContentType("text/plain");
                                    response.getWriter().write("1");  //1 means success
                                }else {
                                    response.setContentType("text/plain");
                                    response.getWriter().write("5");  //5 means no slots available for tomorrow
                                }
                            }catch (Exception e){
                                e.printStackTrace();
                            }
                        }
                    }else{
                        response.setContentType("text/plain");
                        response.getWriter().write("2");
                    }
                }else{
                    response.setContentType("text/plain");
                    response.getWriter().write("2");
                }
             }else {
                 response.setContentType("text/plain");
                 response.getWriter().write("2");
             }
         }


    }


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action=request.getParameter("action");
        if (action.equalsIgnoreCase("register_doctor")){
            System.out.println("I am here");
            request.getRequestDispatcher("Doctor/register.jsp").forward(request,response);
        }
        if (action.equalsIgnoreCase("gotologin")){
            request.getRequestDispatcher("Doctor/index.jsp").forward(request,response);
        }
        if (action.equalsIgnoreCase("gotoappointment")){


            request.getRequestDispatcher("Doctor/appointments.jsp").forward(request,response);
        }
        if (action.equalsIgnoreCase("gotoindex")){
            request.getRequestDispatcher("Patient/landing.jsp").forward(request,response);
        }
        if (action.equalsIgnoreCase("gotodoctorindex")){
            request.getRequestDispatcher("Doctor/index.jsp").forward(request,response);
        }
        if (action.equalsIgnoreCase("gotomainindex")){
            request.getRequestDispatcher("index.jsp").forward(request,response);
        }
    }
}
