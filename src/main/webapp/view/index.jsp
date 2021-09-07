<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
  
<!------ Include the above in your HEAD tag ---------->
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script src="/JavaScript/LoginSuccess.js"></script>  
       
<title>Insert title here</title>
</head>
<body>

 <div id="login">
        <h3 class="text-center text-white pt-5 text-primary"> Mycutemini Pipeline Login page</h3>
        <div class="container">
            <div id="login-row" class="row justify-content-center align-items-center">
                <div id="login-column" class="col-md-6">
                    <div id="login-box" class="col-md-12">
                        <form id="login-form" class="form" action="login" method="post">
                            <h3 class="text-center text-info text-primary">Login</h3>
                            <div class="form-group">
                                <label for="username" class="text-info">Username:</label><br>
                                <input type="text" name="username" id="username" class="form-control" placeholder="Enter Username" required>
                            </div>
                            <div class="form-group">
                                <label for="password" class="text-info">Password:</label><br>
                                <input type="password" name="password" id="password" class="form-control" placeholder="Enter Password" required>
                            </div>
                            <div class="form-group">
                                <input type="submit" name="submit" class="btn btn-info btn-md" value="submit">
                                 <input type="button" name="Register" class="btn btn-info btn-md" value="Register">
                                </div>
                            <p class="text-primary">${errormessage}</p><p class="text-primary">${logoutmessage }</p>
                            </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <form action="Export/inbetweendate" method="get">
    
    <input type ="date" name="startdate">
    <input type ="date" name="enddate">
     <input type="submit">
    
    </form>
    
    <form action="Export/year" method="get">
    
    <input type ="input" name="exportyear">
    
     <input type="submit">
    
   </form>
   
   <form action="Export/month" method="get">
   
   <input type ="input" name="exportyear">
   
   <input type ="input" name="exportmonth">
   
    <input type="submit">
   
  </form>
  
    
    
<input type="text" name="SearchBox" id="input"><br>

 <ul class="list-group list-group-flush" id="orderlist">
  </ul>
    <a id="testid">Testing</a> 

  <script type="text/javascript">

  $( "a" ).on( "click", function() {
	  var c=this.id;
alert(c);
	  
	 });

  

 </script>
  </body>
     </html>

<!--<h1>Welcome Mycutemini Pipeline Login</h1>
<form action="login" method=post>
 <input type="text" name="username" placeholder="Enter Username" required><br><br>
 <input type="password" name="password" placeholder="Enter Password" required><br><br>
 <input type="submit" value="Submit">  -->
