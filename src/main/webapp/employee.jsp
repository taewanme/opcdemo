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
                <li class="nav-item"><a class="nav-link " href="./index.jsp">홈</a></li>
                <li class="nav-item"><a class="nav-link" href="#">SaaS</a></li>
                <li class="nav-item"><a class="nav-link" href="#">PaaS</a></li>
                <li class="nav-item"><a class="nav-link" href="#">IaaS</a></li>
                <li class="nav-item"><a class="nav-link" href="#">마켓플레이스</a></li>
                <li class="nav-item"><a class="nav-link active" href="./employee.jsp">신규채용</a></li>
                <li class="nav-item"><a class="nav-link" href="./login.jsp">관리자</a></li>
            </ul>
        </nav>
    </div>

    <!-- Jumbotron -->
    <div class="jumbotron">
        <h1>채용 공고</h1>
        <p class="lead">오라클은 글로벌 최고의 엔터프라이즈 소프트웨어 및 클라우드 인프라 플랫폼을 제공해 기업입니다.
            오라클과 함께 최고의 기업용 소프트웨어와 클라우드 서비스를 고객에게 전달할 인재를 모집하고 있습니다.
            ​채용을 원하시는 지원자께서는 지원서를 작성해 해주시기 바라며, 관련 부서의 신속한 검토 후 서류전형에
            통과하신 분께 우선적으로 연락 드리도록 하겠습니다.
        </p>
        <div class="text-xs-center">
            <img src="./images/oraclelogo.jpeg" class="rounded" alt="oracle logo">
        </div>
    </div>
    <div class="card">
        <div class="card-header">
            지원자 정보 입력
        </div>
        <div class="card-block">
            <form method="post" action="${pageContext.request.contextPath}/employee">
            <div class="row">
                <div class="col-lg-offset-3 col-lg-6">
                    <div class="form-group">
                        <label for="name" class="col-xs-2 col-form-label">이름</label>
                        <div class="col-xs-10">
                            <input class="form-control" type="text" value="" name="name">
                        </div>
                    </div>
                </div>
                <div class="col-lg-offset-3 col-lg-6">
                    <div class="mail">
                        <label for="example-text-input1" class="col-xs-2 col-form-label">E-mail</label>
                        <div class="col-xs-10">
                            <input class="form-control" type="text" value="" name="email" id="email">
                        </div>
                    </div>
                </div>
            </div>
            <br/>
            <div class="row">
                <div class="col-lg-offset-3 col-lg-6">
                    <div class="form-group">
                        <label for="job" class="col-xs-2 col-form-label">지원분야</label>
                        <div class="col-xs-10">
                            <select class="custom-select" name="department">
                                <option selected>지원 분야를 선택해 주세요</option>
                                <option value="마케팅 및 PR">마케팅 및 PR</option>
                                <option value="솔루션 아키텍트">솔루션 아키텍트</option>
                                <option value="전문 서비스 전문가">전문 서비스 전문가</option>
                                <option value="운영 엔지니어 및 데이터 센터">운영 엔지니어 및 데이터 센터</option>
                                <option value="시스템, 품질 및 보안 엔지니어링">시스템, 품질 및 보안 엔지니어링</option>
                                <option value="사용자 경험">사용자 경험</option>
                                <option value="영업 및 계정 관리">영업 및 계정 관리</option>
                                <option value="소프트웨어 개발 엔지니어 및 관리자">소프트웨어 개발 엔지니어 및 관리자</option>
                                <option value="기술 제품 및 프로그램 관리자">기술 제품 및 프로그램 관리자</option>
                                <option value="비즈니스 개발 및 파트너 네트워크">비즈니스 개발 및 파트너 네트워크</option>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="col-lg-offset-3 col-lg-6">
                    <div class="form-group">
                        <label for="sex" class="col-xs-2 col-form-label">성별</label>
                        <div class="col-xs-10">
                            <label class="custom-control custom-radio">
                                <input id="sex1" name="sex" type="radio" class="custom-control-input" value="남성">
                                <span class="custom-control-indicator"></span>
                                <span class="custom-control-description">남성</span>
                            </label>
                            <label class="custom-control custom-radio">
                                <input id="sex2" name="sex" type="radio" class="custom-control-input" value="여성">
                                <span class="custom-control-indicator"></span>
                                <span class="custom-control-description">여성</span>
                            </label>
                        </div>
                    </div>
                </div>
            </div>
            <br/>
            <div class="row">
                <div class="col-lg-offset-3 col-lg-6">
                    <div class="form-group">
                        <label for="picture" class="col-xs-2 col-form-label">사진첨부</label>
                        <div class="col-xs-10">
                            <input type="file" class="form-control-file" id="picture" aria-describedby="fileHelp">
                        </div>
                    </div>
                </div>
                <div class="col-lg-offset-3 col-lg-6">
                    <label for="birth" class="col-xs-2 col-form-label">생년월일</label>
                    <div class="col-xs-10">
                        <input class="form-control" type="date" value="" name="birth" id="birth">
                    </div>
                </div>
            </div>
            <br/>
            <div class="row">
                <div class="col-lg-offset-3 col-lg-6">
                    <div class="form-group">
                        <label for="phone" class="col-xs-2 col-form-label">전화번호</label>
                        <div class="col-xs-10">
                            <input class="form-control" type="text" value="" name="phone" id="phone">
                        </div>
                    </div>
                </div>
                <div class="col-lg-offset-3 col-lg-6">
                    <div class="form-group">
                        <label for="address" class="col-xs-2 col-form-label">주소</label>
                        <div class="col-xs-10">
                            <input class="form-control" type="text" name="address" value="" id="address">
                        </div>
                    </div>
                </div>
            </div>
            <br/>
            <button type="submit" class="btn btn-primary">Submit</button>
            </form>
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
