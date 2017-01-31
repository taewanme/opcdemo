<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>오라클 클라아드 서비</title>

    <!-- Bootstrap core CSS -->
    <link href="http://v4-alpha.getbootstrap.com/dist/css/bootstrap.min.css" rel="stylesheet">


    <!-- Custom styles for this template -->
    <link href="./css/justfied-nav.css" rel="stylesheet">
    <link href="./css/sticky-footer.css" rel="stylesheet">
    <link href="./css/signin.css" rel="stylesheet">
</head>

<body>

<div class="container">
    <div class="masthead">
        <h3 class="text-muted">Oracle Cloud: <%= request.getRemoteAddr() %></h3>
        <nav>
            <ul class="nav nav-justified">
                <li class="nav-item"><a class="nav-link" href="./index.jsp">홈</a></li>
                <li class="nav-item"><a class="nav-link" href="#">SaaS</a></li>
                <li class="nav-item"><a class="nav-link" href="#">PaaS</a></li>
                <li class="nav-item"><a class="nav-link" href="#">IaaS</a></li>
                <li class="nav-item"><a class="nav-link" href="#">마켓플레이스</a></li>
                <li class="nav-item"><a class="nav-link" href="./employee.jsp">신규채용</a></li>
                <li class="nav-item"><a class="nav-link active" href="./login.jsp">관리자</a></li>
            </ul>
        </nav>
    </div>
    <br />
    <br />
    <form method="post" action="${pageContext.request.contextPath}/login" class="form-signin">
        <h2 class="form-signin-heading">Please sign in</h2>
        <label for="account" class="sr-only">Email address</label>
        <input id="account" class="form-control" placeholder="Email address" name="login.account" required autofocus>
        <label for="password" class="sr-only">Password</label>
        <input type="password" id="password" class="form-control" placeholder="Password" name="login.password" required>
        <button class="btn btn-lg btn-primary btn-block" type="submit" value="login">로그인</button>
    </form>

</div> <!-- /container -->
    <!-- Site footer -->
    <footer class="footer">
        <div class="container">
            <div class="text-muted">&copy; Integrated Oracle Application & Platform Services</div>
            <div class="text-muted">오라클 소개 | 문의하기 | 법적공지 | 이용약관 | 개인정보 보호 정책 |</div>
        </div>
    </footer>
</div> <!-- /container -->



<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>
