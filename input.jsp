<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import ="java.io.*, pack.compile" %>
    <jsp:useBean id="ob" class=pack.compile></jsp:useBean>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="AA88BB">
<form action="input.jsp" >
<br><br> Enter Coding : <textarea cols=50 rows=20 name="inp"></textarea>
<br><br><input type="submit" value="Get_Output"/>
</form>
<form action="input1.jsp">
<input type="submit" value="Run"/>
</form>
<%
String jout="";
  String arr[]={"aaa","bbb"};
  int i=0,j=0; 
  String s1=request.getParameter("inp");
  if(s1!=null)
  {  
	FileOutputStream fout=new FileOutputStream("D:\\jai\\temp.java");
	byte ss[]=s1.getBytes();
	fout.write(ss);
	ob.main(arr);
  }%>
</body>
</html>
