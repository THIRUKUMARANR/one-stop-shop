<%-- <%@taglib uri="http://java.sun.com/jstl/core" prefix="c"%> --%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
   <head>
      <title>Spring Security Demo </title>
   </head>
   <body>
   <%@include file="header.jsp"%>
      <center>
         <h2> login </h2>
         <div style="text-align: center; padding: 30px;border: 1px solid green;width: 250px;">
            <form method="post" action="<c:url value='/login' />">
               <table>
                  <tr>
                     <td colspan="2" style="color: red">${message}</td>
                  </tr>
                  <tr>
                     <td>Username:</td>
                     <td><input type="text" name="username" /></td>
                  </tr>
                  <tr>
                     <td>Password:</td>
                     <td><input type="password" name="password" /></td>
                  </tr>
                  <tr>
                     <td colspan="2"><input type="submit" value="Login" /></td>
                  </tr>
               </table>
            </form>
         </div>
      </center>
   </body>
</html>