<%-- 
    Document   : addNewCust.jsp
    Created on : Sep 15, 2018, 1:10:51 PM
    Author     : NengV1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      
        <form action="./AddnewCustServlet">

            <label for="fname">ID</label>
            <input type="text" id="id" name="id" placeholder="Cus id" >
            
            <label for="lname">Name</label>
            <input type="text" id="name" name="name" placeholder="name" >
            
            <label for="cou">Address</label>
            <input type="text" id="address" name="address" placeholder="address" >
            
           
            <input type="submit" value="Submit" >
            
        </form>
        
    </body>
</html>
