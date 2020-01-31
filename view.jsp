<%@page import="actionPackage.mail_Send"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="DbPack.DatabaseConnection"%>
<%
String email=null ;
String userid = session.getAttribute("uid").toString();
String fileName = request.getQueryString();
String user_group=null,file_group=null,file_key=null;

Connection con = DatabaseConnection.getCon();
Statement st1 = con.createStatement();
Statement st2 = con.createStatement();
ResultSet rs1 = st1.executeQuery("select * from register where username = '"+userid+"' ");
ResultSet rs2 = st2.executeQuery("select * from upload where file_name = '"+fileName+"' ");

if(rs1.next()){
    user_group = rs1.getString("group_");
}
if(rs2.next()){
    file_group = rs2.getString("group_");
    file_key = rs2.getString("key_");
}

if(user_group.equalsIgnoreCase(file_group)){
    email = rs1.getString("email");
    mail_Send.sendMail(file_key, userid, email);
    response.sendRedirect("read_content.jsp?mm="+fileName);
    out.println("fine read");
    
}
else{
    out.println("not readable");
}
%>