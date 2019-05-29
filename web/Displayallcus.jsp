<%-- 
    Document   : Displayallcus
    Created on : Sep 12, 2018, 8:42:02 PM
    Author     : NengV1
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="model.Customer"%>
<%@page import="java.util.List"%>
<%@page import="javax.annotation.PostConstruct"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Display</h1>
        User: <%= session.getAttribute("user") %> , <a href="./logout">logout</a>
        <table>
            <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Address</th>
            </tr>
             <%
                List<Customer> allcus = (List<Customer>)session.getAttribute("allcus");
                 if (allcus !=null) {
                            for (Customer cus : allcus) {
                            out.print(" <tr>"); 
                            out.print("<td>"+cus.getId()+"</td>");    
                            out.print("<td>"+cus.getName()+"</td>");    
                            out.print("<td>"+cus.getAddress()+"</td>");    
                            out.print("</tr>");   
                }
                     }
          
          %>
              
        </table>
    </body>
</html>
<%!
//    private List<Customer> allCus = new ArrayList<>();
//
//    @PostConstruct
//    public void intiCus(){
//        allCus.add(new Customer("123", "Neng", "Kalasin"));
//        allCus.add(new Customer("122", "Neng2", "Kalasin2"));
//        allCus.add(new Customer("124", "Neng3", "Kalasin3"));
//    }

%>