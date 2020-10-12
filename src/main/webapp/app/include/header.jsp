<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<link href="https://fonts.googleapis.com/css2?family=Gaegu:wght@700&display=swap" rel="stylesheet">

      <title>${pageContext.request.contextPath}</title>
      <meta charset="utf-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
      <link rel="stylesheet" href="${pageContext.request.contextPath}/app/assets/css/main.css" />
	  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!DOCTYPE html>
<!-- Header -->

      <!-- Logo -->
         <span class="logo">
				 <a href="${pageContext.request.contextPath}/index.jsp">
				<%--  <img src="${pageContext.request.contextPath}/app/images/logo.png" alt="" style="height:50px; margin-top:10px;"> --%>
				 </a>
				<span style="font-family: 'Gaegu', cursive; font-size: 50px;">Z.O.O.M</span>
			</span>
    
       <!-- search -->   
<%--       
      <form method="post" action="${pageContext.request.contextPath}/search/Search.ser" style="margin-right:50px;">
      <div class="row gtr-uniform" style="position:relative; width:850px; height:50px; float:left; ">
         <div class="col-9 col-12-small" style="">
            <input type="text" name="query" id="query" value="" placeholder="Query" style="background-color:rgba(255,255,255,0.9); color:rgb(50,50,50);"/>
         </div>
         <div class="col-3 col-12-small" style="padding-top:15px;">
            <input type="submit" value="Search" class="fit" />
         </div>
      </div>
      </form>
       --%>
      <!-- Nav -->
      
 
      <nav id="nav" >
      
         
             <ul>
               <li><a href="${pageContext.request.contextPath}/index.jsp">메인</a></li>
  				<li><a href="${pageContext.request.contextPath}/bbs/BbsList.bb?bbs_maindiv=전체&bbs_smalldiv=전체">커뮤니티</a></li>
  				<c:if test="${session_id eq 'admin'}">	
               <li><a href="${pageContext.request.contextPath}/report/ReportList.re">신고 목록</a></li>
               </c:if>

               
               
               <c:choose>
            <c:when test="${session_id != null}">
  				<li><a href="${pageContext.request.contextPath}/member/MemberInformation.me?user_id=${session_id}">마이페이지</a></li>
               <li><a onclick="return confirm('로그아웃 하시겠습니까?')" href="${pageContext.request.contextPath}/member/MemberLogOut.me" class="button">로그아웃</a></li>
            </c:when>
            <c:otherwise>
               <li><a href="${pageContext.request.contextPath}/member/MemberLogin.me" class="button">로그인</a></li>
            </c:otherwise>
         </c:choose>
            </ul> 
            
      
<!-- 
				Logo
					<span class="logo">
						<a href="index.html">Faction</a>
						<span>By Pixelarity</span>
					</span>

				Nav
					<nav id="nav">
						<ul>
							<li><a href="index.html">Home</a></li>
							<li>
								<a href="#" class="icon solid fa-angle-down">Dropdown</a>
								<ul>
									<li><a href="#">Option One</a></li>
									<li><a href="#">Option Two</a></li>
									<li> <a class="btn btn-danger ml-1 mt-2" data-toggle="modal" href="#reportModal">신고</a></li>
									<li>
										<a href="#">Submenu</a>
										<ul>
											<li><a href="#">Option One</a></li>
											<li><a href="#">Option Two</a></li>
											<li><a href="#">Option Three</a></li>
											<li><a href="#">Option Four</a></li>
										</ul>
									</li>
								</ul>
							</li>
							<li><a href="generic.html">Generic</a></li>
							<li><a href="elements.html">Elements</a></li>
							<li><a href="#" class="button">Log In</a></li>
						</ul>
					</nav> -->
		
		</nav>
		
	   <!-- Scripts -->
      <script src="${pageContext.request.contextPath}/app/assets/js/jquery.min.js"></script>
      <script src="${pageContext.request.contextPath}/app/assets/js/jquery.dropotron.min.js"></script>
      <script src="${pageContext.request.contextPath}/app/assets/js/browser.min.js"></script>
      <script src="${pageContext.request.contextPath}/app/assets/js/breakpoints.min.js"></script>
      <script src="${pageContext.request.contextPath}/app/assets/js/util.js"></script>
      <script src="${pageContext.request.contextPath}/app/assets/js/main.js"></script>
