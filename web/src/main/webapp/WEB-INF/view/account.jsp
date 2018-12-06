<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>
<title>Berlioz Netflix Sample</title>
<script src='https://code.jquery.com/jquery-3.2.1.min.js' ></script>
<script src='https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js' ></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body class="container">
<main>
    <h1>Berlioz Netflix Sample</h1>


    <div class="d-flex flex-wrap">

        <c:forEach items="${movies}" var="movie">
        <div class="card mr-3 mt-3" style="width: 12rem;">
            <img class="card-img-top" src="${movie.poster}" />
            <div class="card-body">
                <h5>${movie.name} (${movie.year})</h5>
                <a href="/watch?id=${movie.id}" class="btn btn-primary">Watch Now!</a>
            </div>
        </div>
        </c:forEach>

    </div>

    <c:if test="${empty movies}">
    There are no movies in the watchlist. Add movies using <b>Account</b> service.
    Account service is available at <a href="https://github.com/berlioz-the/sample-account">https://github.com/berlioz-the/sample-account</a>
    </c:if>

</main>
</body>
</html>