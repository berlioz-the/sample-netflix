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

    <div class="row">
        <div class="col-sm">
            <a href="account" class="btn btn-info">Access movies from account</a>
        </div>
    </div>

    <div class="row">
        This web site depends on <strong>Account</strong>
        service from <a href="https://github.com/berlioz-the/sample-account">https://github.com/berlioz-the/sample-account</a>.
    </div>

</main>
</body>
</html>