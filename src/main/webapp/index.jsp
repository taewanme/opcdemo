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
    <link href="./resources/css/justfied-nav.css" rel="stylesheet">
    <link href="./resources/css/sticky-footer.css" rel="stylesheet">
</head>

<body>

<div class="container">

    <!-- The justified navigation menu is meant for single line per list item.
         Multiple lines will require custom code not provided by Bootstrap. -->
    <div class="masthead">
        <h3 class="text-muted">Oracle Cloud</h3>
        <nav>
            <ul class="nav nav-justified">
                <li class="nav-item"><a class="nav-link active" href="#">홈</a></li>
                <li class="nav-item"><a class="nav-link" href="#">SaaS</a></li>
                <li class="nav-item"><a class="nav-link" href="#">PaaS</a></li>
                <li class="nav-item"><a class="nav-link" href="#">IaaS</a></li>
                <li class="nav-item"><a class="nav-link" href="#">클라우드 마켓플레이스</a></li>
                <li class="nav-item"><a class="nav-link" href="./employee">신규채용</a></li>
                <li class="nav-item"><a class="nav-link" href="./login">관리자</a></li>
            </ul>
        </nav>
    </div>

    <!-- Jumbotron -->
    <div class="jumbotron">
        <h1>완전한 통합 클라우드</h1>
        <p class="lead">Oracle Cloud는 업계에서 가장 광범위하고 가장 통합된 퍼블릭 클라우드입니다.
            SaaS(서비스형 소프트웨어), PaaS(서비스형 플랫폼) 및 IaaS(서비스형 인프라) 전반에서 최고의 서비스를 제공하며,
            자체 데이터 센터에서 Oracle Cloud를 이용할 수 있도록 지원합니다.
            Oracle Cloud를 통해 조직은 비즈니스 민첩성을 강화하고 비용을 절감하며 IT 복잡성을 제거하여 혁신과 비즈니스 변화를 이루어 나갈 수 있습니다.</p>
        <p><a class="btn btn-lg btn-success" href="https://cloud.oracle.com/en_US/tryit" role="button">클라우드 서비스 무료체험</a></p>
    </div>

    <!-- Example row of columns -->
    <div class="row">
        <div class="col-lg-4">
            <h2>SaaS(서비스 소프트웨어)</h2>
            <p>Oracle Cloud PaaS(서비스형 플랫폼)는 기업 IT부서 및 ISV(독립 소프트웨어 벤더) 개발자가 업계 최고의 데이터베이스 및 애플리케이션 서버에 기초한 엔터프라이즈급 클라우드 플랫폼을 사용하여 기능이 풍부한 애플리케이션을 빠르게 작성 및 배포하거나 Oracle Cloud SaaS 애플리케이션을 확장하도록 도와줍니다.</p>
            <p><img src="https://cloud.oracle.com/opc/images/SaaS-category-image-01.png" class="rounded" alt="Cinque Terre" width="304" height="236"></p>
            <p>
            <div class="text-xs-center"><a class="btn btn-primary" href="https://cloud.oracle.com/en_US/saas" role="button">클라우드 애플리케이션</a></div>
            </p>
        </div>
        <div class="col-lg-4">
            <h2>PaaS(서비스 플랫폼)</h2>
            <p>Oracle Cloud PaaS(서비스형 플랫폼)는 기업 IT부서 및 ISV(독립 소프트웨어 벤더) 개발자가 업계 최고의 데이터베이스 및 애플리케이션 서버에 기초한 엔터프라이즈급 클라우드 플랫폼을 사용하여 기능이 풍부한 애플리케이션을 빠르게 작성 및 배포하거나 Oracle Cloud SaaS 애플리케이션을 확장하도록 도와줍니다.</p>
            <p><img src="https://cloud.oracle.com/opc/images/Oracle_Cloud_Platform_PaaS.png" class="rounded" alt="Cinque Terre" width="304" height="236"></p>
            <p>
            <div class="text-xs-center"><a class="btn btn-primary" href="https://cloud.oracle.com/en_US/paas" role="button">클라우드 플랫폼</a></div>
            </p>
        </div>
        <div class="col-lg-4">
            <h2>IaaS(서비스 인프라)</h2>
            <p>구독 기반 통합 인프라 서비스의 종합적 세트를 사용하면 오라클이 관리하고 호스트하며 지원하는 엔터프라이즈급 클라우드에서 모든 워크로드를 실행할 수 있습니다.</p>
            <p><img src="https://cloud.oracle.com/opc/images/Oracle_Cloud_Infrastructure_IaaS.png" class="rounded" alt="Cinque Terre" width="304" height="236"></p>
            <p>
            <div class="text-xs-center"><a class="btn btn-primary" href="https://cloud.oracle.com/en_US/iaas" role="button">클라우드 인프라</a></div>
            </p>

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
