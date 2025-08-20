<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="dbcon.dbcon"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.IOException"%>
<%@page import="java.io.PrintWriter"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style>
* {
  margin: 0;
  padding: 0;
}

.table-wrap {
  max-width: 800px;
  margin: 80px auto;
  overflow-x: auto;
}

table, td, th {
/*   border: 1px solid #ddd; */
  text-align: left;
  font-size:18px;
  text-transform:capitalize;
}

table thead tr{
     background-color: #071665;
    color: #fff;
}

table {
  border-collapse: collapse;
  width: 100%;
   border-radius: 16px 16px 0px 0px;
  overflow: hidden;
}

table tbody tr td{
 border: 1px solid #ddd;
}

th, td {
  padding: 15px;
  white-space: nowrap;
}

table tbody tr:nth-child(odd) {
 background: #b4b4b442;
  color: #000;
  font-weight: 500;
}

.box-wrap {
  padding: 0px 16px;
}

table tbody tr td::last-child{
background-color:red;
}

</style>
</head>
<body>
 <div class="box-wrap">
        <div class="table-wrap">
            <table>
                <thead>
                    <tr>
                        <th>sr no.</th>
                        <th>Name</th>
                        <th>Email</th>
                    </tr>
                </thead>
                
                 <%
      Connection con;
      con = dbcon.create();
      PreparedStatement ps = con.prepareStatement("SELECT * FROM `fileguard`.`receiverreg` ");
      ResultSet rs = ps.executeQuery();

      while (rs.next()) {
    %>      
             <tbody>
                    <tr>
                        <td><%=rs.getString(1)%></td>
                        <td><%=rs.getString(2)%></td>
                        <td><%=rs.getString(3)%></td>                            
                </tbody>
                 <%} %>
            </table>
           
        </div>
    </div>
</body>
</html>