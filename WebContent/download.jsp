<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.FileInputStream"%>
<%@ page import="java.io.IOException"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="javax.swing.JDialog"%>
<%@ page import="javax.swing.JOptionPane"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="dbcon.dbcon"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.Date"%>
<%@ page import="javax.swing.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>File Download</title>
</head>
<body>
    <%
        try {
            String status = "Downloaded";
            Connection con = dbcon.create();
            PreparedStatement ps = con.prepareStatement("SELECT * FROM `fileguard`.`uploadfile` ");
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                String content = rs.getString(2);
                String ascii1 = rs.getString(6);
                String secretkey4 = rs.getString(7);

                String ascii = request.getParameter("ascii");
                String filename = request.getParameter("filename");
                String secretkey = request.getParameter("secretkey");
    %>
                <embed src="Local/<%= filename %>" height="1000px" width="1700px" />
    <%
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    %>
</body>
</html>
