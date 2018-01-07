<%@page import="group1.model.Comment"%>
<%@page import="java.util.ArrayList"%>
<%@page import="group1.model.Images"%>
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

            <div class="col-md-12">
                <h3 class="pre-title">Tên truyện</h3>
                <h6>Chap 2</h6>
                <p>
	                <%
	                	if(session.getAttribute("listImg")!=null){ 
	                		List<Images> listImg = (List<Images>)session.getAttribute("listImg");
	                			for(Images img: listImg){
	                %>
                    <img src="./resources/images/<%=img.getName()%>">
                    <%}} %>
                </p>
                 
            </div>

            <div class="col-md-12 pag">
                <ul class="pagination">
                  <li class="page-item disabled"><a class="page-link" href="#"><</a></li>
                  <li class="page-item"><a class="page-link" href="#">Chap 1</a></li>
                  <li class="page-item active"><a class="page-link" href="#">Chap 2</a></li>
                  <li class="page-item"><a class="page-link" href="#">Chap 3</a></li>
                  <li class="page-item"><a class="page-link" href="#">Chap 4</a></li>
                  <li class="page-item"><a class="page-link" href="#">Chap 5</a></li>
                  <li class="page-item"><a class="page-link" href="#">Chap 6</a></li>
                  <li class="page-item"><a class="page-link" href="#">></a></li>
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
                <form class="form-cmt">
					<div class="form-item">
						<input type="text" name="cmt" id="cmt" value="" placeholder="Nhập bình luận" required="required" />
						<a href="javascript:void(0)" title="" class="btn" onclick="return getCommet()">Bình luận</a>
					</div>
				</form>
				
				<div class="ajax-data">
				 <%
					if(session.getAttribute("listCmt")!=null){
						ArrayList<Comment>	listCmt = (ArrayList<Comment>)session.getAttribute("listCmt");
						for(Comment objCmt : listCmt){
				%> 
				<div class="item-cmt">
					<p class="name-cmt"><%=objCmt.getFullName() %></p>
					<p class="content-cmt"><%=objCmt.getComment() %></p>
					<p class="time-cmt"><%=objCmt.getDate() %></p>
				</div>
				<% 		
						}}else{
				%>
					<p> Óc chó Thảo hãy sủa đi</p>
				<%} %> 
			</div>
            </div>

			<script type="text/javascript">
			function getCommet(){
				var cmt = $("#cmt").val();
				$.ajax({
					url: '<%=request.getContextPath()%>/comment',
					type: 'POST',
					cache: false,
					data: {//Dữ liệu gửi đi
						acmt:cmt
						},
					success: function(data){
						// Xử lý thành công
						$(".ajax-data").html(data);
						console.log(data);
					},
					error: function (){
						alert("Có lỗi trong quá trình xử lý");
					// Xử lý nếu có lỗi
					}
				});
				//alert("Fullname:" +fullname +" "+"Nội dung :"+cmt);
			}
			</script>
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
<script src="./resources/lib/myJS/app1.js"></script>

</html>
<!-- <div style="min-height: 30px;"></div> -->