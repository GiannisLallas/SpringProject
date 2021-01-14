

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <!--    <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>User Form Page</title>
        </head>-->
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

    </head>
    <body>

        <div class="container my-3">
            <div class="row">
                <div class="col-md-8 mx-auto">
                    <h2>Course info</h2>
                    <br/>
                    <label style="color: tomato">${message}</label>
                    <br/>
                    <form:form action="${pageContext.request.contextPath}/admin/edit" method="POST"  modelAttribute="course"
                               > 
                        <div class="form-row">
                            <div class="col-md-6 form-group">
                                <label>Id</label>
                                <form:input path="id" class="form-control" readonly="true"/>
                            </div>
                        </div>
                        <div class="form-row">

                            <div class="col-md-6 form-group">
                                <label>Title</label>
                                <form:input path="title" class="form-control" placeholder="Title" readonly="true"/>
                            </div>
                            <div class="col-md-6 form-group">
                                <label>Description</label>
                                <form:input path="description" class="form-control" placeholder="Description" readonly="true"/>
                            </div>
                            <div class="col-md-6 form-group">
                                <label>Stream</label>
                                <form:input path="stream" class="form-control" placeholder="Stream" readonly="true"/>
                            </div>
                            <div class="col-md-6 form-group">
                                <label>Price</label>
                                <form:input path="price" class="form-control" placeholder="Price" readonly="true"/>
                            </div>
                            <br/>  
<!--                            <div class="col-md-12 form-group">
                                <label>Students</label>
                                 <form:select path="users" items="${users}" itemValue="uid" class="form-control" itemLabel="lastName"  multiple="true" />
                            </div>-->
                            
                            <div class="col-md-12 form-group">
                                <label>Videos</label>
                                 <form:select path="videosList" items="${videos}" itemValue="id" class="form-control" itemLabel="title"  multiple="true" readonly="true" />
                            </div>
                        </form:form>
                        <br/>
                       
                        <br/>
<!--                        <div class="col-md-6 form-group">
                            <input type="submit" value="EDIT" class="btn btn-primary btn-block mt-3"/>
                       
                    </div>-->
                    <div class="col-md-12 form-group">
                        <form:form action="${pageContext.request.contextPath}/student/testPage" method="get">
                            <input type="submit" value="Back" class="btn btn-primary btn-block mt-3"/>
                        </form:form>
                    </div>

                </div>

            </div>
        </div>
    </div>

</body>
</html>
