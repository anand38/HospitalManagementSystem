<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>login</title>

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

<div class="row" style="margin-top: 5%">
    <div class="col-lg-4 col-lg-offset-4">
        <div class="panel panel-primary"style="padding: 10%">
            <div class="panel-heading">
                Login to continue
            </div>
            <div class="panel-body">
                <div class="row" >
                    <form method="post" action="<%= request.getContextPath() %>/Controller">
                        <input type="hidden" name="action" value="from_doctor_login">
                        <div class="form-group" style="margin-top: 4%">
                            <input type="text" name="userid" class="form-control"  placeholder="UserID" required="true"/>
                        </div>
                        <div class="form-group" style="margin-top: 4%">
                            <input type="password" name="password" class="form-control"  placeholder="Password" required="true"/>
                        </div>
                        <div class="form-group" style="margin-top: 4%">
                            <button type="submit" class="btn btn-success">SUBMIT</button>
                        </div>
                        <a href="<%= request.getContextPath() %>/Controller?action=register_doctor" style="margin-top: 5%;">Don't have an account Register here?</a>
                    </form>
                </div>

            </div>
        </div>
    </div>
</div>

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="/assets/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>