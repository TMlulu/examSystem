<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=IOS8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Signin Template for Bootstrap</title>


    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">


    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="css/signin.css" rel="stylesheet">

    <script src="https://cdn.jsdelivr.net/npm/html5shiv@3.7.3/dist/html5shiv.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/respond.js@1.4.2/dest/respond.min.js"></script>

    <script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>


</head>

<body >





<div class="text-center">
<form class="form-signin" action="/login"  style="width: 500px" method="post">
    <img class="mb-4" src="images/8.png" alt="" width="200px" height="55px">
    <h1 class="h3 mb-3 font-weight-normal">Please sign in</h1>
    <p class="h3 mb-3 font-weight-normal" style="color: red">${requestScope.msg}</p>
    <%--<script>--%>
        <%--var telephone = "${requestScope.msg}"--%>
        <%--if(telephone!=null){--%>
            <%--<p></p>--%>
        <%--}--%>
    <%--</script>--%>
    <label class="sr-only">Username</label>
    <input type="text" class="form-control" placeholder="Username" name="telephone" required="" autofocus="">
    <label class="sr-only">Password</label>
    <input type="password" class="form-control" placeholder="Password" name="password" required="">

    <div class="checkbox mb-3">
       <div style="float: left ;font-size: 15px;" >
           <label>
               <input type="checkbox" value="remember-me" style="font-size: 15px;"> Remember me
           </label>
       </div>
        <div style="float: right;font-size: 15px;">
            <a href="jsp/register.jsp">Register</a>
        </div>

    </div>
    </br>
    </br>
    <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>

</form>
</div>

</body>




</html>
