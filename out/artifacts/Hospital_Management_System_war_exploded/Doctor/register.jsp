<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Register</title>

    <!-- Bootstrap -->
    <link href="/assets/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/sweetalert2.min.css">
    <script src="assets/js/sweetalert2.min.js"></script>
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

    <div class="row" style="margin-top: 5%">
        <div class="col-lg-6 col-lg-offset-3 col-md-8 col-md-offset-2 col-sm-8 col-sm-offset-2 col-xs-10 col-xs-offset-1">
            <div class="row" style="background: rgba(203,183,55,0.56);padding: 10px;font-size: 20px;font-family: Monospaced">
                Register
            </div>
            <form id="myform" class="form-horizontal" style="margin-top: 5%" method="post" action="/Controller">
                <input type="hidden" name="action" value="frompostjob">
                <div class="form-group">
                    <label for="foruserid" class="col-sm-2 control-label">UserID</label>
                    <div class="col-sm-10">
                        <input type="text" name="userid" class="form-control" id="foruserid" placeholder="UserID" required="true">
                    </div>
                </div>
                <div class="form-group">
                    <label for="forname" class="col-sm-2 control-label">Name</label>
                    <div class="col-sm-10">
                        <input type="text" name="name" class="form-control" id="forname" placeholder="Name" required="true">
                    </div>
                </div>

                <div class="form-group">
                    <label for="forspecialization" class="col-sm-2 control-label">Specialization</label>
                    <div class="col-sm-10">
                        <select class="form-control" name="specialization" id="forspecialization" required="true">
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
                    <label for="forexperience" class="col-sm-2 control-label">Experience</label>
                    <div class="col-sm-10">
                        <input type="number" min="2" name="experience" class="form-control" id="forexperience" placeholder="Experience" required="true">
                    </div>
                </div>

                <div class="form-group">
                    <label for="foraddress" class="col-sm-2 control-label">Address</label>
                    <div class="col-sm-10">
                        <textarea class="form-control" id="foraddress" name="address" rows="3" placeholder="Address" required="true"></textarea>
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
                    <label for="fortime" class="col-sm-2 control-label">Available Timings</label>
                    <div class="col-sm-10">
                        <select class="form-control" name="time" id="fortime" required="true">
                            <option value="10:00 a.m -11:00 a.m">10:00 a.m -11:00 a.m</option>
                            <option value="11:00 a.m -12:00 p.m">11:00 a.m -12:00 p.m</option>
                            <option value="12:00 p.m -1:00 p.m">12:00 p.m -1:00 p.m</option>
                            <option value="1:00 p.m -2:00 p.m">1:00 p.m -2:00 p.m</option>
                            <option value="2:00 p.m -3:00 p.m">2:00 p.m -3:00 p.m</option>
                            <option value="3:00 p.m -4:00 p.m">3:00 p.m -4:00 p.m</option>
                            <option value="4:00 p.m -5:00 p.m">4:00 p.m -5:00 p.m</option>
                            <option value="5:00 p.m -6:00 p.m">5:00 p.m -6:00 p.m</option>
                            <option value="6:00 p.m -7:00 p.m">6:00 p.m -7:00 p.m</option>
                            <option value="7:00 p.m -8:00 p.m">7:00 p.m -8:00 p.m</option>
                            <option value="8:00 p.m -9:00 p.m">8:00 p.m -9:00 p.m</option>
                            <option value="9:00 p.m -10:00 p.m">9:00 p.m -10:00 p.m</option>

                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label for="for_no_of_patients" class="col-sm-2 control-label">No. of allowed Patients</label>
                    <div class="col-sm-10">
                        <input type="number" name="no_of_patients" min="1" class="form-control" id="for_no_of_patients" required="true">
                    </div>
                </div>

                <div class="form-group">
                    <label for="forpassword" class="col-sm-2 control-label">Password</label>
                    <div class="col-sm-10">
                        <input type="password" name="password" class="form-control" id="forpassword" placeholder="Password" required="true">
                    </div>
                </div>

                <div class="form-group">
                    <label for="forrepassword" class="col-sm-2 control-label">Retype Password</label>
                    <div class="col-sm-10">
                        <input type="password" class="form-control" id="forrepassword" placeholder="Re-enter Password" required="true">
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <button type="submit" class="btn btn-default">Register</button>
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
        var x="some";
        if($('#foruserid').val().trim()=='' || $('#forname').val().trim()=='' || $('#forspecialization').val().trim()==''||
                $('#forexperience').val().trim()=='' || $('#foraddress').val().trim()=='' || $('#forcontact').val().trim()=='' ||
                $('#foremail').val().trim()=='' || $('#fortime').val().trim()=='' || $('#for_no_of_patients').val().trim()=='' ||
                $('#forpassword').val().trim()=='' || $('#forrepassword').val().trim()==''
        ){
            swal("Oops","Probably you have entered only spaces in some fields","error");
            return false;
        }
        else if($('#forpassword').val()!=$('#forrepassword').val()){
            swal("Oops","Passwords dont match!!","error");
            return false;
        }
        else{
            $.ajax({
                url: form.attr('action'),
                type: form.attr('method'),
                data: form.serialize(),
                success: function (data) {

                   if(data=='false'){
                       x="change";
                       swal("Oops","UserId is not available try some other",'error');
                   }else{
                       $('#myform').trigger('reset');
                       window.location.href="Controller?action=gotologin";
                   }
                }

        });
        }
      e.preventDefault();
    });
</script>

</body>
</html>