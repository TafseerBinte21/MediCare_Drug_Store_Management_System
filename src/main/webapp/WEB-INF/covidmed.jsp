<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
String id = request.getParameter("userId");
String driverName = "com.mysql.cj.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "drugstore";
String userId = "root";
String password = "dbms21sql21tafa21";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
ResultSet rs = null;
%>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

<header class="s-header" >
        <div class="row" align="left">

            <nav class="s-header__nav" >
                <ul>
                    <li class="current"><a class="smoothscroll" href="home">Home</a></li>
                    <li><a class="smoothscroll" href="services">Services</a></li>
                    <li><a class="smoothscroll" href="about">About Us</a></li>
                    <li><a class="smoothscroll" href="covid">COVID-19</a></li>
                </ul>
            </nav>

            <a class="s-header__menu-toggle" href="#0" title="Menu">
                <span class="s-header__menu-icon"></span>
            </a>

        </div> <!-- end row -->
    </header> <!-- end s-header -->
<h2 align="center"><font><strong>COVID-19 Drugs</strong></font></h2>
<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>
<body style='background-color: rgb( 207, 236, 236 )'>

</tr>
<tr bgcolor="white">
<td><b>ID</b></td>
<td><b>NAME</b></td>
<td><b>QUANTITY</b></td>
<td><b>PRICE</b></td>


<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM covidmed";

resultSet = statement.executeQuery(sql);

while(resultSet.next()){
%>
<tr bgcolor="white">

<td><%=resultSet.getString("ID") %></td>
<td><%=resultSet.getString("NAME") %></td>
<td><%=resultSet.getString("QUANTITY") %></td>
<td><%=resultSet.getString("PRICE") %></td>


</tr>

<% 
}



} catch (Exception e) {
e.printStackTrace();
}
%>
</table>