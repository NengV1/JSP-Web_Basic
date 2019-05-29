<%@page import="java.io.BufferedWriter"%>
<%@page import="java.io.FileWriter"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.FileReader"%>
<%@page import="javax.annotation.PreDestroy"%>
<%@page import="javax.annotation.PostConstruct"%>
<%@page session="true" %>

<% 
    Cookie[] c = request.getCookies();
    for (Cookie ca : c){
        session.setAttribute("user", ca.getValue());
        break;
    }
%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <div>TODO write contedsadsddnt</div>
        <a href="./hello">Call </a>
        </br>   
         <a href="./login.html">Login </a>
          <a href="./login2.html">Login2</a>
    </br>
           <!--<a href="./Displayallcus.jsp">Show all</a>-->
           <a href="./DisAllCust">Show all</a>
           </br>
            <a href="./addNewCust.jsp">add</a>
           
           
           
          <%!
            int count=0;

   @PostConstruct
   public void myLoad(){
              try {
                FileReader fr = new FileReader("C:\\Users\\NengV1\\Desktop\\sd.txt");
                BufferedReader br = new BufferedReader(fr);
                String countstr = br.readLine();
                count = Integer.parseInt(countstr.split("=")[1]);
                br.close();
                fr.close();
              } catch (Exception e) {
                  }
          
          }
     
   @PreDestroy
   public void saveCount(){
               try {
                FileWriter fr = new FileWriter("C:\\Users\\NengV1\\Desktop\\sd.txt");
                BufferedWriter br = new BufferedWriter(fr);
                br.write("count="+count);
                br.close();
                fr.close();         
                   } catch (Exception e) {
                   }
              
              
          }
          
          %>
          
    <center>Count visited<%= ++count%></center>
          
    </body>
</html>
