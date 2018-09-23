
<%@page import="java.sql.*" %> 
<%@ page language="java" import="java.util.*" contentType="text/html;charset=utf-8"%>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>ImPrint Login Form</title>

        <!-- CSS -->
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/font-awesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="assets/css/form-elements.css">
        <link rel="stylesheet" href="assets/css/style.css">
		<link rel="stylesheet" href="css/extend.css">
		

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->


        <!-- Favicon and touch icons -->
        <link rel="shortcut icon" href="assets/ico/favicon.png">
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="assets/ico/apple-touch-icon-57-precomposed.png">



    </head>

    <body>

<!-- Top content -->
<div class="top-content">
        	
            <div class="inner-bg">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-8 col-sm-offset-2 text">
                            <h1><strong>ImPrint</strong> Login Form</h1>
                            <div class="description">
                            	<P>
	                            	JOIN US
                            	</p>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-sm-6 col-sm-offset-3 form-box">
                        	<div class="form-top">

                        		<div class="form-top-left">

                        			<h3>登陆我们的网站</h3>
                                    <div style="color:red;">${message}</div>
                            		<p>请输入用户名和密码登陆:</p>
                        		</div>
                        		<div class="form-top-right">
                        			<i class="fa fa-lock"></i>
                        		</div>
                            </div>
                            <div class="form-bottom">
			                    <form role="form" action="LoginServlet" method="post" class="login-form">
			                    	<div class="form-group">
			                    		<label class="sr-only" for="form-username">Username</label>
			                        	<input type="text" name="form-username" placeholder="用户名" class="form-username form-control" id="form-username">
			                        </div>
			                        <div class="form-group">
			                        	<label class="sr-only" for="form-password">Password</label>
			                        	<input type="password" name="form-password" placeholder="密    码" class="form-password form-control" id="form-password">
			                        </div>
			                        <button type="submit" class="btn">Sign in!</button>
			                    </form>
		                    </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6 col-sm-offset-3 social-login">
                        	<h3>...还没有账号？</h3>
                        	<button class="btn" id="goReg" data-toggle="modal" data-target="#regDiv">现在去注册 -  ></button>
                        </div>
                    </div>
                </div>
            </div>
            
        </div>
		
		<div class="modal fade in active"  aria-hidden="true" id="regDiv" tabindex="-1">
			
			<div class="form-bottom" id="regContainer">
				<div class="modal-dialog"  id="regView">
					<div class="modal-content">
						<div class="modal-header">
						   
							<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
							<h4 class="modal-title" id="myModalLabel">注册您的账号</h4>
							<h1> </h1>
						</div>
			                <form role="form" action="SignUpServlet" method="post" class="login-form">
			                    	<div class="form-group">
			                    		<h5 class="regText">用户名：</h5>
			                        	<input type="text" name="regName"  class="form-username form-control" id="regName">
			                        </div>
			                        <div class="form-group">
									    <h5 class="regText">密  码：</h5>
			                        	<label class="sr-only" for="form-password">Password</label>
			                        	<input type="password" name="regPwd"  class="form-password form-control" id="regPwd">
			                        </div>
			                        <button type="submit" class="btn" id="registerBtn">注册</button>
			                    </form>
						</div>
					</div>
				</div>
		   
		    </div>
				
					
			
		</div>


        <!-- Javascript -->
        <script src="assets/js/jquery-1.11.1.min.js"></script>
        <script src="assets/bootstrap/js/bootstrap.min.js"></script>
        <script src="assets/js/jquery.backstretch.min.js"></script>
        <script src="assets/js/scripts.js"></script>
        
        <!--[if lt IE 10]>
            <script src="assets/js/placeholder.js"></script>
        <![endif]-->

    </body>

</html>