<%-- 
    Document   : videos
    Created on : Jan 15, 2021, 1:45:05 PM
    Author     : ntsia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Course Videos</title>
    </head>
        
    <body>
        <h1>Hello World!</h1>
        
            
    <% String courseId = request.getParameter("courseId"); %>
    <% int cid = Integer.parseInt(courseId); %>
    <%Optional<Courses> course = coursesService.findById(courseId);>
    <% List<Videos> videoList = course.get().getVideosList(); %>
    Course id is <%=courseId %>
    cid is <%=cid %>
        <ul>
            <c:forEach items="${videoList}" var="video">
                <tr>
                    <td>${video.title}</td>
                    <td>${video.url}</td>
                </tr>
            </c:forEach>        
        </ul>-->
    </body>
</html>
