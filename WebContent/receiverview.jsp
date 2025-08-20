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
<title>Secret Files</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>

<style>
  table, td, th {
    border: 1px solid;
    border-collapse: collapse;
  }
  table {
    text-align: center;
    margin: auto; /* Center the table horizontally */
    width: 60%;   /* Set the desired width */
    color:white;
  }
  td, th {
    padding: 20px;
  }

  a {
    color: white;
    text-decoration: none;
  }
  a:hover {
    color: white;
    text-decoration: none;
  }
  
  h1{
  
 margin:10px 600px;
  }
  
  .video-background {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    z-index: -1; /* Place the video behind other content */
}

video {
    object-fit: cover;
    width: 100%;
    height: 100%;
}

.content {
    Add your content styles here 
}
  
</style>
</head>
<body>

 <div class="video-background">
        <video autoplay loop muted playsinline>
           <source src="image/video2.mp4" type="video/mp4">
            <!-- Add additional source tags for different video formats if needed -->
        </video>
    </div>
  <h1>Secret files</h1>
  <table>
    <caption></caption>
    <tr>
      <th style="width:50%">File Name</th>
      <th colspan="2" style="width:30%">Select Option</th>
    </tr>

    <%
      Connection con;
      con = dbcon.create();
      PreparedStatement ps = con.prepareStatement("SELECT * FROM `fileguard`.`uploadfile` ");
      ResultSet rs = ps.executeQuery();

      while (rs.next()) {
    	  
    	  String content=rs.getString(3);
    	  
    	  System.out.println("contentttt      "+rs.getString(3));
    %>

    <tr style="height:40px">
      <%-- <td rowspan="2"><%=rs.getString(2)%></td> --%>
      <%-- <td><button type="button" class="btn btn-primary"><a href="download.jsp?filename=<%=rs.getString(2)%>&&ascii=<%=rs.getString(6)%>&&secretkey=<%=rs.getString(7)%>">Download</a></button></td> --%>
    </tr>
    <tr>
    <td rowspan="2"><%=rs.getString(4)%></td>
      <td><button type="button" class="btn btn-danger"><a href="download1.jsp?filename=<%=rs.getString(2)%>&&ascii=<%=rs.getString(6)%>&&secretkey=<%=rs.getString(7)%>">Key</a></button></td>
    </tr>
    <%}%>
  </table>
</body>
</html>
	