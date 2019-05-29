<%-- 
    Document   : newCustomer
    Created on : Sep 15, 2018, 1:30:53 PM
    Author     : NengV1
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="model.Customer"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
   <%--     <jsp:useBean id="newCust" class="model.Customer" scope="request">
            <jsp:setProperty name="newCust" property="id" 
            param="id" />
            
             <jsp:setProperty name="newCust" property="name"
               param="name" />
             
              <jsp:setProperty name="newCust" property="address"
                param="address" />
              
        </jsp:useBean>--%>
         <jsp:useBean id="newCust" class="model.Customer" scope="request"/>
        id : <jsp:getProperty name="newCust" property="id"/> </br>
        name : <jsp:getProperty name="newCust" property="name"/> </br>
        Address : <jsp:getProperty name="newCust" property="address"/> </br>
        <a href="Displayallcus.jsp">all</a>
    </body>
</html>
