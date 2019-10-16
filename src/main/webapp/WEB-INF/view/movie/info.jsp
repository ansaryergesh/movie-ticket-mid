<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="../header.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Insert title here</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <h1 align="center">Movie </h1>
    <div class="container">
        <div class="row">

                <c:forEach items="${list }" var="l">
                    <c:url value="/book/getMovieShows" var="getMovie">
                        <c:param name="id" value="${s.id }"></c:param>
                    </c:url>
                <div class="card">
                    <img
                            class="pinned-repo-item p-3 mb-3 border border-gray-dark rounded-1 public source"
                            width="250" height="200"
                            src="data:image/png;base64,${ l.moviePath}" border="20px" />
                    <div class="card-body">
                        <div class="clear" align="center"> ${l.name }</div>
                        <div class="clear" align="center">${l.cast }</div>
                    </div>
                </div>

                    </c:forEach>
        </div>
    </div>

</head>
<body>
</body>
</html>