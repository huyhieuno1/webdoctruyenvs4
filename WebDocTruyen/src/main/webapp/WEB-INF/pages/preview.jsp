<%@page import="group1.model.Chap"%>
<%@page import="java.util.List"%>
<%@page import="group1.model.Truyen"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="header.jsp" %>  


<div class="row">

    <!-- left-bar -->
    <div class="col-sm-2 adv">
        <a href="">
            <img width="100%" src="./resources/images/adv1.gif">
        </a>
            <a href="">
            <img width="100%" src="./resources/images/adv1.gif">
        </a>
        </div>
        <!-- main -------------------------------------------------------------------------->
      
        <div class="col-sm-6 main">
	         <% if(session.getAttribute("truyen")!=null){ 
	        	Truyen truyen = (Truyen)session.getAttribute("truyen");
	        %>
            <div class="col-md-12">
                <h3 class="pre-title">Truyện gồm 10 chap</h3>
                <img src="./resources/images/<%=truyen.getImages() %>" />
                <h5>Mô tả truyện</h5>
                <p class="story-preview">
                    <%=truyen.getConTant() %>
                    <br />
                    <b>[click vào chap2 :))~ ]</b>
                </p>
                  
            </div>
			<%} %>
            <div class="col-md-12 pag">
               <!--  <select class="pagination"> -->
                <ul class="pagination">
                     <% if(session.getAttribute("listChap")!=null){ 
	            		List<Chap> listChap = (List<Chap>)session.getAttribute("listChap");
	            		for(Chap chap: listChap){
           			 %>
						<%-- <a class="page-link" href="${pageContext.request.contextPath}/handlingchap-detail?id=<%=chap.getID_Chap() %>"><option><%=chap.getNumber() %></option></a> --%>
	                <li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/handlingchap-detail?id=<%=chap.getID_Chap() %>"><%=chap.getNumber() %></a></li>
               <!--  </select> -->
                <%}} %>
               </ul>
            </div>
        </div>
        
        <!-- main -------------------------------------------------------------------------->

        <!-- right-bar -->
        <div class="col-sm-4 right">
            <div class="col-sm-12 top-rating">
                <h4>Top rating</h4>
                <ul>
                    <li>
                        <a class="col-sm-7" href="">Sò lông</a>
                        <p class="col-sm-5">
                            <span class="glyphicon glyphicon-star"></span>
                            <span class="glyphicon glyphicon-star"></span>
                            <span class="glyphicon glyphicon-star"></span>
                            <span class="glyphicon glyphicon-star"></span>
                            <span class="glyphicon glyphicon-star"></span>

                        </p>
                    </li>
                    <li>
                        <a class="col-sm-7" href="">Hiệu hãm</a>
                        <p class="col-sm-5">
                            <span class="glyphicon glyphicon-star"></span>
                            <span class="glyphicon glyphicon-star"></span>
                            <span class="glyphicon glyphicon-star"></span>
                            <span class="glyphicon glyphicon-star-empty"></span>
                            <span class="glyphicon glyphicon-star-empty"></span>
                        </p>
                    </li>
                    <li>
                        <a class="col-sm-7" href="">Huy hãm ***</a>
                        <p class="col-sm-5">
                            <span class="glyphicon glyphicon-star"></span>
                            <span class="glyphicon glyphicon-star"></span>
                            <span class="glyphicon glyphicon-star"></span>
                            <span class="glyphicon glyphicon-star"></span>
                            <span class="glyphicon glyphicon-star-empty"></span>

                        </p>
                    </li>
                </ul>
            </div>
            <div class="col-sm-12 last-cmt">
                <h4>Last comment</h4>
            </div>
        </div>
        </div>
    </div>
    <div class="navbar-default wrapper">
        <div class="end-text">
            <p class="col-sm-3" style="margin-top: 15px">
                Design by TEAM 4 © 2017
                <!-- a href="#" -->
            </p>
            <p class="col-sm-6">

            </p>
            <p class="col-sm-3 version" style="margin-top: 15px">Version 18.1</p>
        </div>
    </div>

</body>
<!-- <script>
    w3.includeHTML();
</script> -->
<script src="./resources/lib/myJS/app.js"></script>

</html>
<!-- <div style="min-height: 30px;"></div> -->