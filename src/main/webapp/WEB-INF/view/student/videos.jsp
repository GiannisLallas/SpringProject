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
        Course id is <%=courseId %>
        cid is <%=cid %>
        <ul>
            <c:forEach items="${videos}" var="video">
                <tr>
                    <td><button onclick="myFunction()" name="video_btn" value="${video.url}">${video.title}</button></td>
                </tr>
            </c:forEach>        
        </ul>

        <div id="player">
            video player
        </div>
        <script>

            function myFunction(e){
            var url = e.currentTarget.value();
            console.log("url");
            document.getElementById(player).innerHTML =  <iframe width="420" height="315" src=url></iframe> ;
        }
        </script>

    </body>
</html>
