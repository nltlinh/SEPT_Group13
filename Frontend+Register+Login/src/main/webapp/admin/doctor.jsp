<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width">
    <%--boostrap--%>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>

    <style>
        body {
            padding-top: 3.5rem;
        }
    </style>
    <title>Doctor List</title>
</head>
<body>
<jsp:include page="../_navigation.jsp"></jsp:include>
<div class="container">
    <!--Add doctor form-->
    <h3>Add new doctor</h3>
    <div id='add-doctor'>
        <form id="doctor-form">
            <div class="input-group mb-3">
                <input required type="text" name="name" id="name" placeholder="Name" class="form-control">
                <input required type="email" name="email" id="email" placeholder="Email" class="form-control">
                <input required type="text" name="description" id="description" placeholder="Description"
                       class="form-control">
                <div class="input-group-prepend">
                    <input class="btn btn-outline-primary" type="submit" value="Add Doctor">
                </div>
            </div>
        </form>
    </div>
    <br>
    <div id="spoiler" role="aria-hidden">
        <div id="edit-form"></div>
    </div>
    <br>
    <!--Doctor list table-->
    <h1>Doctor List</h1>
    <table class="table">
        <thead>
        <tr>
            <th>Name</th>
            <th>Email</th>
            <th>Description</th>
            <th>Action</th>
        </tr>
        </thead>
        <tbody id="doctor-container">
        </tbody>
    </table>
</div>
</body>
<script src="${contextPath}/resources/js/doctor.js"></script>


</html>