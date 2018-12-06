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

    <h2>${movie.name} (${movie.year})</h2>

    <div id="carousel-movie" class="carousel slide" data-ride="carousel">

      <div class="carousel-inner">
          <c:forEach items="${movie.images}" var="image" varStatus="status">
            <div class="carousel-item ${status.first ? 'active' : ''}">
              <img class="d-block w-100" src="${image}" />
            </div>
          </c:forEach>
      </div>

      <a class="carousel-control-prev" href="#carousel-movie" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>

      <a class="carousel-control-next" href="#carousel-movie" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>

    </div>



</main>
</body>
</html>


<script>
$(function(){
    $('#carousel-movie').carousel({
      interval: 2000
    });
});
</script>
