<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.io.*,pack.compile" %>
    <jsp:useBean id="ob" class="pack.compile"></jsp:useBean>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="AA88BB">
<form action="input1.jsp">
<%
String jout="";
File file = new File("D:\\jai\\temp.txt");
 int ch;
 StringBuffer strContent = new StringBuffer("");
FileInputStream fin = null;
  try
{
 fin = new FileInputStream(file);
  while( (ch = fin.read()) != -1)
strContent.append((char)ch);
  fin.close(); 
    }
catch(FileNotFoundException e)
{
 System.out.println("File " + file.getAbsolutePath() + 
                       " could not be found on filesystem");
}
catch(IOException ioe)
{
System.out.println("Exception while reading the file" + ioe);
}
System.out.println("File contents :");
System.out.println(strContent);
jout=strContent.toString();
%>
<%=jout%>


<input type="text" value="<%=jout%>"></input>
<input type="submit" value="Get_Output"/>
</form>
</body>
</html>
