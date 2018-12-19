<%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 2018/12/12
  Time: 16:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <title>注册</title>
    <meta http-equiv="Content-Type" content="text/html; charset=IOS8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Signin Template for Bootstrap</title>


    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">


    <!-- Bootstrap core CSS -->
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="../css/signin.css" rel="stylesheet">

    <script src="https://cdn.jsdelivr.net/npm/html5shiv@3.7.3/dist/html5shiv.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/respond.js@1.4.2/dest/respond.min.js"></script>

    <script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>


</head>

<body >





<div class="text-center">
    <form class="form-signin" action="/register"  style="width: 500px">
        <img class="mb-4" src="../images/bootstrap-solid.svg" alt="" width="100px" height="72px">
        <h1 class="h3 mb-3 font-weight-normal">Please Register</h1>
        <h1 class="h3 mb-3 font-weight-normal">${requestScope.msg}</h1>
        <label class="sr-only">Username</label>
        <input type="text" class="form-control" placeholder="Username" name="telephone" required="" autofocus="">
        <label class="sr-only">Password</label>
        <input type="password" class="form-control" placeholder="Password" name="password" required="">
        <label class="sr-only">Password</label>
        <input type="password" class="form-control" placeholder="Re-enter password" name="password1" required="">

        </br>
        </br>
        <button class="btn btn-lg btn-primary btn-block" type="submit">Register</button>

    </form>
</div>

</body>

</html>

