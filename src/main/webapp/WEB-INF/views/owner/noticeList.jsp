<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!doctype html>
<html class="fixed">
	<head>

		<!-- Basic -->
		<meta charset="UTF-8">

		<title>캠핑장 등록</title>
		<meta name="keywords" content="HTML5 Admin Template" />
		<meta name="description" content="JSOFT Admin - Responsive HTML5 Template">
		<meta name="author" content="JSOFT.net">
       <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

		<jsp:include page="/resources/commonCssAdmin.jsp"/>

	</head>
	<body >
		<section class="body">
		<!-- start: header -->

        			<jsp:include page="../common/ownerHeader.jsp"/>
        			<!-- end: header -->

        			<div class="inner-wrapper">
        				<!-- start: sidebar -->
        				<jsp:include page="../common/ownerSidebar.jsp"/>
        				<!-- end: sidebar -->
        <section role="main" class="content-body" style="padding-top: 0px;">

        <!---------------------------------------------------------------------------------->
        <h3><strong>캠핑장 공지사항</strong></h3>

			<hr>
			 <div class="table-responsive">
    <table class="table table-hover mb-none">
        <thead>
           <tr>
              <th class="col-md-1">번호</th>
              <th class="col-md-1">제목</th>
              <th class="col-md-1">조회수</th>
           </tr>
        </thead>
        <tbody>

        </tbody>
     </table>
      </div>
         <!---------------------------------------------------------------------------------->
</section>

    </section>


	</body>
</html>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script>

   $.ajax({
      url : "http://127.0.0.1:8080/owner/api/notice/list",
      method : "get",
      data : {},
      success : (x) => {

         const voList = x;
        
         const tbody = document.querySelector("tbody")
         let str = "";
    
         for(let i = 0; i < voList.length ; i++){
               str += "<tr>"
               str += "<td><a href='/owner/notice/detail?no=" + voList[i].no + "'>" + voList[i].no + "</a></td>"; 
               str += "<td><a href='/owner/notice/detail?no=" + voList[i].no + "'>" + voList[i].title + "</a></td>";  
               str += "<td>" + voList[i].hit + "</td>"
               str += "</tr>"
         }
         tbody.innerHTML = str;
      },
      error : (error) => {
         console.log(error);
      },
   });

</script>
