<%-- 
    Document   : register
    Created on : 28 Mar, 2018, 12:37:52 PM
    Author     : shravan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register</title>
    </head>
    <body>
        <jsp:useBean class="beans.RegisterBean" id="obj"></jsp:useBean>
        <jsp:setProperty property="*" name="obj"></jsp:setProperty>
        <jsp:useBean class="dao.RegisterDao" id="daoObj"></jsp:useBean> 
            
        <%
           String msg= daoObj.save(obj);
            if(msg.equals("success"))
            %>
            <jsp:forward page="welcome.jsp"></jsp:forward>
        
         else
            <%="not"%>
    </body>
</html>
