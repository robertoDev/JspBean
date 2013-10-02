<%--
  Created by IntelliJ IDEA.
  User: homeuser
  To change this template use File | Settings | File Templates.
  Esempio di bean utilizzato da JSP (http://www.html.it/pag/15155/utilizzo-dei-java-bean/)
  In più è illustrato il metodo
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="user" scope="session" class="it.blackcat.learning.userInfo" />
<jsp:setProperty name="user" property="*"/>
<%
    user.aggiornaPV();
%>
<html>
  <head>
    <title></title>
  </head>
  <body>

<%if(user.getName()==null){%>
Type a user datail info: <br>
<form method="post">
    <input type="text" name="name"/> name
    <br>
    <input type="text" name="email"/> email
    <br>
    <input type="submit"/>

</form>

<%}else{%>

<jsp:getProperty name="user" property="summary"/>
<form method="post">
    <input type="hidden" name="reset" value="true"/>
    <input type="submit" value="reset"/>

</form>
<%}%>



  </body>
</html>