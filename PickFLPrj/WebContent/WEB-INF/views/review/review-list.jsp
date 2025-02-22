<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>PickFL</title>
    <meta content="" name="description">
    <meta content="" name="keywords">

    <!-- Favicons -->
    <link href="assets/img/favicon.png" rel="icon">
    <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet">
    <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
    <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
    <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
    <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

    <!-- Template Main CSS File -->
    <link href="assets/css/mainPage.css" rel="stylesheet">

    <style>
        img{
            width: 5rem;
            height: 5rem;
        }
    </style>

</head>

<body>
	
	<%@include file="/WEB-INF/views/common/header.jsp" %>
	
    <section>
       <div>
           <div class="container">
               <div class="row">
                   <p class="text-center fs-1">REVIEW</p>           
               </div>
               <div class="row">
               		<div class="col-sm-10 mb-4">
                    </div>
               		<div class="col-sm mb-4">
	               		<c:if test="${not empty sessionScope.loginUser}">
		               		<a href="add-review">
			                   <button class="btn btn-success">리뷰쓰기</button>          
		               		</a>
	               		</c:if>
                    </div>
               </div>
                   <!-- table --> 
		           <table class="table table-hover">
		               <thead>
		                   <tr>
		                       <th scope="col">꽃다발이름</td>
		                       <th scope="col">리뷰사진</td>
		                       <th scope="col">리뷰제목</td>
		                       <th scope="col">별점</td>
		                       <th scope="col">작성자</td>
		                       <th scope="col">작성일</td>
		                   </tr>
		               </thead>
		               <c:forEach items="${reviewList}" var="r">
			               <tr onClick="getParam(${r.reviewNo})">
			                   <td>${r.bouquetName}</td>
			                   <td><img src="image?fileName=${r.reviewImage}"></td>
			                   <td>${r.reviewTitle}</td>
			                   <td>
				                <span>
		                        	<c:if test="${r.stars == 1}">                        	
		                        		⭐✩✩✩✩
		                        	</c:if>
		                        	<c:if test="${r.stars == 2}">                        	
		                        		⭐⭐✩✩✩
		                        	</c:if>
		                        	<c:if test="${r.stars == 3}">                        	
		                        		⭐⭐⭐✩✩
		                        	</c:if>
		                        	<c:if test="${r.stars == 4}">                        	
		                        		⭐⭐⭐⭐✩
		                        	</c:if>
		                        	<c:if test="${r.stars == 5}">                        	
		                        		⭐⭐⭐⭐⭐
		                        	</c:if>
	                        	</span> 
			                   </td>
			                   <td>${r.memberId}</td>
			                   <td>${r.reviewDate}</td>
			               </tr>
		               </c:forEach>
		           </table>
           </div>
       </div>
    </section>

    </main><!-- End #main -->
    <%@include file="/WEB-INF/views/common/footer.jsp" %>

    <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

    <!-- Vendor JS Files -->
    <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
    <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
    <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
    <script src="assets/vendor/php-email-form/validate.js"></script>

    <!-- Template Main JS File -->
    <script src="assets/js/main.js"></script>
    <script src="assets/js/join.js"></script>
    
    <script type="text/javascript">
    	function getParam(no){
    		location.href = 'review?reviewNo=' + no;
    	}
    </script>

</body>

</html>
