<%@ page import="java.util.ArrayList" %>
<%@ page import="com.com.beans.Patient" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Todays Appointments!!</title>

    <!-- Bootstrap -->
    <link href="/assets/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#" style="margin-left: 2%"><img src="assets/ico/icon.jpg" height="35px" width="35px"/> </a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
                <li class="active"><a href="<%= request.getContextPath() %>/Controller?action=gotoindex">BOOK APPOINTMENT <span class="sr-only">(current)</span></a></li>
                <li><a href="<%= request.getContextPath() %>/Controller?action=gotodoctorindex">DOCTORS</a></li>
                <li><a href="#">CONTACT US</a></li>
                <!--
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="#">Action</a></li>
                                        <li><a href="#">Another action</a></li>
                                        <li><a href="#">Something else here</a></li>
                                        <li role="separator" class="divider"></li>
                                        <li><a href="#">Separated link</a></li>
                                        <li role="separator" class="divider"></li>
                                        <li><a href="#">One more separated link</a></li>
                                    </ul>
                                </li>
                -->
            </ul>

        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>

<%
    ArrayList<Patient> list= (ArrayList<Patient>) request.getAttribute("list");

%>

<div class="row" style="margin-top: 5%">
    <div class="col-lg-6 col-lg-offset-3 col-md-8 col-md-offset-2 col-sm-8 col-sm-offset-2 col-xs-10 col-xs-offset-1">
        <div class="row" style="padding: 5%;font-family: monospace;font-size: 20px">
            Hello Doctor, here are your today's Appointment details!!
        </div>
        <table class="table">
            <tr class="success"><th>Name</th>
                <th>Email</th>
                <th>Date of Birth</th>
                <th>Gender</th></tr>
            <%
            int flag=0;
            for (Patient p:list){
                if (flag==0)
                    flag=1;  //to toggle for color selection
                else
                    flag=0;
                String name=p.getName();
                String email=p.getEmail();
                String dob=p.getDob();
                String gender=p.getGender();

        %>
            <%
                if (flag==0){
            %>
            <tr class="danger">
                    <%
            }else{
        %>
            <tr class="info">
                <%
                    }
                %>
                <td><%= name %></td>
                <td><%= email %></td>
                <td><%= dob %></td>
                <td><%= gender %></td>
            </tr>


            <%
                }
            %>
        </table>

    </div>
</div>

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="/assets/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>