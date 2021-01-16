<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <link rel="stylesheet" href="@{datatables.css}"/>
    </head>
    <body>

        <h1>Your courses are :</h1>
       

        <div class="container">
            <div class="row">
                <div class="col-lg-10 mt-5 mb-5">

                    
                    <table class="table table-bordered table-responsive" style="width: 100%">
                        <thead>
                            <tr >
                                <th>ID</th>
                                <th >Title</th>
                                <th >Description</th>
                                <th >Stream</th>
                                <th>Price</th>
                            </tr>
                        </thead>
                        <tbody> 
                            <c:forEach items="${userCourses}" var="cu">
                                <tr>
                                    <td>${cu.id}</td>
                                    <td>${cu.title}</td>
                                    <td>${cu.description}</td>
                                    <td>${cu.stream}</td>
                                     <td>${cu.price}</td>
                                    
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                    <p>
                        <a href="${pageContext.request.contextPath}/student/">Back</a>
                    </p>
                </div>
            </div>
        </div>

       
    </body>
</html>
