<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <title>Kakao Pay</title>
</head>
<body>
<h1>카카오 페이 테스트</h1>
<form method="post" th:action="@{/kakaoPay}">
    <button type="submit">결제하기</button>
</form>
</body>
</html>
