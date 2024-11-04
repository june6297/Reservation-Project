<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>레스토랑 예약 플랫폼</title>
<%@ include file="template/head.jspf"%>
<style>
.jumbotron {
    background-image: url('/reservation/resources/img/restaurant.jpg');
    background-size: 100%;
    color: white;
    position: relative;
    padding: 4rem 2rem;  /* 여백 추가 */
}

.jumbotron::before {
    content: '';
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-color: rgba(0, 0, 0, 0.4);  /* 투명도 조절 가능 */
}

.jumbotron h1, 
.jumbotron p {
    position: relative;
    z-index: 1;  
    text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
}

.fixed-size-img {
    width: 100%; /* 부모 요소에 맞게 가로 크기 조정 */
    height: 200px; /* 원하는 고정 높이 설정 */
    object-fit: cover; /* 비율을 유지하면서 이미지를 자름 */
}
.thumbnail {
	height : 370px;
    position: relative;
}
.thumbnail .button-wrapper {
    position: absolute;
    bottom: 15px;
    left: 15px;
    right: 15px;
}
</style>
</head>
<body>

<nav class="navbar navbar-default">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#navbar" aria-expanded="false"
				aria-controls="navbar">
				<span class="sr-only">Toggle navigation</span> 
				<span class="icon-bar"></span> 
				<span class="icon-bar"></span> 
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="${root}/">레스토랑 예약</a>
		</div>
		<div id="navbar" class="navbar-collapse collapse">
			<ul class="nav navbar-nav">
				<li class="active"><a href="${root}/">HOME</a></li>
				<li><a href="${root}/restaurant">예약하기</a></li>
				<c:if test="${not empty sessionScope.loggedInUser}">
					<li><a href="${root}/mypage/">마이페이지</a></li>
				</c:if>
			</ul>
			<%@ include file="template/menu.jspf" %>
		</div>
	</div>
</nav>

				<div class="container">
					<div class="jumbotron">
						<h1>맛있는 식사를 예약하세요</h1>
						<p>다양한 레스토랑을 쉽고 빠르게 예약할 수 있습니다.</p>
						<p>
							<a class="btn btn-primary btn-lg"
								href="${root}/restaurant" role="button">지금
								예약하기</a>
						</p>

					</div>

					<div class="row">
						<div class="col-md-4">
							<h2>인기 레스토랑</h2>
							<p>가장 인기 있는 레스토랑들을 소개합니다.</p>
							<p>
								<a class="btn btn-default" href="#" role="button">더보기 »</a>
							</p>
						</div>
						<div class="col-md-4">
							<h2>오늘의 추천</h2>
							<p>오늘 방문하기 좋은 레스토랑을 추천해드립니다.</p>
							<p>
								<a class="btn btn-default" href="#" role="button">추천 보기 »</a>
							</p>
						</div>
						<div class="col-md-4">
							<h2>특별 이벤트</h2>
							<p>특별한 날을 위한 레스토랑 이벤트를 확인하세요.</p>
							<p>
								<a class="btn btn-default" href="#" role="button">이벤트 보기 »</a>
							</p>
						</div>
					</div>

					<hr>

					<div class="row">
						<div class="col-md-12">
							<h3>최근 등록된 레스토랑</h3>
							<div class="row">
								<c:forEach var="item" items="${list}">
									<div class="col-md-3">
										<div class="thumbnail">
											<img
												src="${item.restImage}"
												alt="사진 ${item.restName}"
												onerror="this.src='${root}/resources/img/default.jpg'"
												class="img-responsive">
											<div class="caption">
												<h4>${item.restName}</h4>
												<p>주소 : ${item.restAddress}</p>
												<p>전화번호 : ${item.restPhone}</p>
											</div>
	                                        <div class="button-wrapper">
													<a href="${root }/restaurant" class="btn btn-info btn-block" role="button">예약하러 가기</a>
											</div>
										</div>
									</div>
								</c:forEach>
							</div>
						</div>
					</div>
				</div>

				<%@ include file="template/footer.jspf"%>
</body>
</html>
