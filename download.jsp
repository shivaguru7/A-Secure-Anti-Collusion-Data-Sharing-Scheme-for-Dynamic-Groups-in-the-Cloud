<%@page import="java.io.OutputStream"%>
<%@page import="DbPack.TrippleDes"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
    String cipher = null, gr= null, gr1 = null, name = null;
    String getFile = request.getQueryString();
    System.out.println("File Name in "+getFile);
    String getUser = session.getAttribute("uid").toString();
    System.out.println("user is " + getUser);
    Connection con = DbPack.DatabaseConnection.getCon();
    Statement st = con.createStatement();
    Statement st1 = con.createStatement();
    Statement st2 = con.createStatement();
    ResultSet rs = st.executeQuery("select * from upload where file_name = '" + getFile + "' ");
      if (rs.next()) {
        gr = rs.getString("group_");
        System.out.println("gr value in download "+gr);
        name = rs.getString("file_name");
        cipher = rs.getString("file_data");
         System.out.println(gr);
    }
    ResultSet rs1 = st2.executeQuery("select * from register where username = '" + getUser + "' ");
    if(rs1.next()){
     gr1 = rs1.getString("group_");
     System.out.println("gr1 value in download "+gr1);
     if(rs1.getString("group_").equalsIgnoreCase(gr)){
         System.out.println(gr);
         System.out.println(gr1);
     
    String plain = new TrippleDes().decrypt(cipher);

    byte[] data = plain.getBytes();
    int ii = st1.executeUpdate("insert into log_details values('"+getUser+"','"+getFile+"','"+gr+"','Download',now())");
    if (data != null) {

        System.out.println("go>>>>>>>>>>");

        response.setContentType("image/jpg");
        response.setHeader("Content-Disposition", "attachment; filename=\"" + name + "\"");

        OutputStream os = response.getOutputStream();
        os.write(data);
        os.close();
        data = null;
        //session.removeAttribute("document1");
    }
     }else{
        out.println(" You are Not A Member....!");
     }
         }else{
         out.println(" Database Error Occured....!");
         }
%>