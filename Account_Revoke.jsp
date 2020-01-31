<%@page import="java.util.List"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="DbPack.DatabaseConnection"%>
<%
String ID = session.getAttribute("uid").toString();
Connection con = DatabaseConnection.getCon();
Statement st = con.createStatement();
int i = st.executeUpdate("update register set status = 'NO' where username = '"+ID+"'");
if(i!=0){
    response.sendRedirect("index.html?A/c_deactivated..!");
}else{
    out.println("Revoke_Error...");
}
List l = null;
%>