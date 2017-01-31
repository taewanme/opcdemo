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
</head>

<body>

<div class="container">

    <!-- The justified navigation menu is meant for single line per list item.
         Multiple lines will require custom code not provided by Bootstrap. -->
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

    <div class="jumbotron">
        <h1>채용 공고</h1>
        <p class="lead">지원자 목록</p>
        <div class="text-xs-center">
            <img src="./images/oraclelogo.jpeg" class="rounded" alt="oracle logo">
        </div>
    </div>
    <div class="card">
        <div class="card-header">
            지원자 정보 입력
        </div>
        <div class="card-block">
            <table class="table table-striped">
                <thead>
                <tr>
                    <th>성명</th>
                    <th>E-mail</th>
                    <th>생일</th>
                    <th>지원분야</th>
                    <th>주소</th>
                    <th>성별</th>
                    <th>전화번호</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${applicants}" var="item">
                <tr>
                    <td>${item.name}</td>
                    <td>${item.email}</td>
                    <td>${item.birth}</td>
                    <td>${item.department}</td>
                    <td>${item.address}</td>
                    <td>${item.sex}</td>
                    <td>${item.phone}</td>
                </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>

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
