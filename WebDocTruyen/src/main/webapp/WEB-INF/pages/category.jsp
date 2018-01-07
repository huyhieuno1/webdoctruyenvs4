<%@page import="group1.model.Chap"%>
<%@page import="group1.model.Truyen"%>
<%@page import="java.util.List"%>
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
        <%if(session.getAttribute("listTR_TL")!=null){ 
        	List<Truyen> listTR = (List<Truyen>)session.getAttribute("listTR_TL");
        		for(Truyen tr: listTR){
        %>
            <div class="col-md-12 item">
               <a  ng-click="preview()" >
                    <img class="col-md-3" ng-src="resources/images/<%=tr.getImages()%>">
                    <div class="col-md-6">
                        <h5><%=tr.getName() %></h5>
						<p class="preview-text"><%=tr.getConTant() %></p>
                    </div>
                </a>
            </div>
        </div>
        <%}} %>
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
                Design by TEAM 4 © 2018
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
<script src="./resources/lib/myJS/app1.js"></script>

</html>
<!-- <div style="min-height: 30px;"></div> -->