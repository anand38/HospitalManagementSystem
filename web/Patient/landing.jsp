<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title> Book Appointment</title>

    <!-- Bootstrap -->
    <link href="/assets/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="/assets/css/sweetalert2.min.css">
    <script src="/assets/js/sweetalert2.min.js"></script>
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style>
        textarea{
            resize: none;
        }
    </style>
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
            <a class="navbar-brand" href="#" style="margin-left: 2%"><img src="/assets/ico/icon.jpg" height="35px" width="35px"/> </a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
                <li class="active"><a href="Patient/landing.jsp">BOOK APPOINTMENT <span class="sr-only">(current)</span></a></li>
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

<div class="row" style="margin-top: 5%">
    <div class="col-lg-6 col-lg-offset-3 col-md-8 col-md-offset-2 col-sm-8 col-sm-offset-2 col-xs-10 col-xs-offset-1">
        <div class="row" style="background: rgba(203,183,55,0.56);padding: 10px;font-size: 20px;font-family: Monospaced">
            Book appointment
        </div>
        <form id="myform" class="form-horizontal" style="margin-top: 5%" method="post" action="/Controller">
            <input type="hidden" name="action" value="from_patient_appointment">
            <div class="form-group">
                <label for="forname" class="col-sm-2 control-label">Name</label>
                <div class="col-sm-10">
                    <input type="text" name="name" class="form-control" id="forname" placeholder="Full Name" required="true">
                </div>
            </div>
            <div class="form-group">
                <label for="fordob" class="col-sm-2 control-label">Date of Birth</label>
                <div class="col-sm-10">
                    <input type="date" name="dob" class="form-control" id="fordob" placeholder="Date of Birth" required="true">
                </div>
            </div>
            <div class="form-group">
                <label for="foraddress" class="col-sm-2 control-label">Address</label>
                <div class="col-sm-10">
                    <textarea name="address" class="form-control" id="foraddress" rows="3" placeholder="Address"></textarea>
                </div>
            </div>
            <div class="form-group">
                <label for="forcontact" class="col-sm-2 control-label">Contact</label>
                <div class="col-sm-10">
                    <input type="tel" name="contact" class="form-control" id="forcontact" placeholder="Contact" required="true">
                </div>
            </div>
            <div class="form-group">
                <label for="foremail" class="col-sm-2 control-label">Email ID</label>
                <div class="col-sm-10">
                    <input type="email" name="email" class="form-control" id="foremail" placeholder="Email ID" required="true">
                </div>
            </div>
            <div class="form-group">
                <label for="forgender" class="col-sm-2 control-label">Gender</label>

                <label class="radio-inline">
                    <input type="radio" name="gender" id="forgender" value="male" required> Male
                </label>
                <label class="radio-inline">
                    <input type="radio" name="gender" id="forgender" value="female" required> Female
                </label>
            </div>
            <div class="form-group">
                <label for="fordoctor" class="col-sm-2 control-label">Select Doctor</label>
                <div class="col-sm-10">
                    <select class="form-control" name="doctor" id="fordoctor" required="true">
                        <option value="Audiologist">Audiologist </option>
                        <option value="Allergist">Allergist</option>
                        <option value="Andrologists">Andrologists</option>
                        <option value="Anesthesiologist">Anesthesiologist</option>
                        <option value="Cardiologist">Cardiologist</option>
                        <option value="Cardiovascular Surgeon">Cardiovascular Surgeon</option>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <label for="fordate" class="col-sm-2 control-label">Appointment Date</label>
                <div class="col-sm-10">
                    <input type="date" name="appointment_date" class="form-control" id="fordate" placeholder="Appointment Date" required="true">
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <button type="submit" class="btn btn-default">SUBMIT</button>
                </div>
            </div>

        </form>
    </div>
</div>

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="/assets/bootstrap/js/bootstrap.min.js"></script>
<script>
    var form=$('#myform');
    form.submit(function(e){
        if($('#forname').val().trim()=='' || $('#fordob').val().trim()=='' ||
        $('#foraddress').val().trim()=='' || $('#forcontact').val().trim()=='' ||
        $('#foremail').val().trim()=='' || $('#fordoctor').val().trim()==''||
        $('#fordate').val().trim()==''){
            swal("Oops","Probably you have entered only spaces in some fields","error");
        }else{
            $.ajax({
                url: form.attr('action'),
                type: form.attr('method'),
                data: form.serialize(),
                success: function (data) {
                    if(data=="1"){
                        sweetAlert("","Your appointment was successfull","success");
                        var delay = 1000;
                        setTimeout(function(){
                            window.location.href="Controller?action=gotomainindex";
                            }, delay);

                    }else if(data=="2"){
                        swal("","You have selected past day","error");
                        //alert("You have selected past day");
                    }else if(data=="3"){
                        sweetAlert("","Appointment can be booked only for next day only in advance","error");
                        //alert("Appointment can be booked only for next two days in advance");
                    }else if(data=="4"){
                        sweetAlert("Sorry","All slots have been booked for today","info");
                    }else if(data=="5"){
                        sweetAlert("Sorry","All slots have been booked for tomorrow","info");
                    }
                }


            });
        }
        e.preventDefault();
    });
</script>
</body>
</html>