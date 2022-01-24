<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Drug Store</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

<body style='background-color: rgb( 207, 236, 236 )'>
</head>
<body>
<header class="s-header" >
        <div class="row" align="left">

            <nav class="s-header__nav" >
                <ul>
                    <li class="current"><a class="smoothscroll" href="home">Home</a></li>
                    <li><a class="smoothscroll" href="services">Services</a></li>
                    <li><a class="smoothscroll" href="about">About Us</a></li>
                    <li><a class="smoothscroll" href="contact">Contact</a></li>
                </ul>
            </nav>

            <a class="s-header__menu-toggle" href="#0" title="Menu">
                <span class="s-header__menu-icon"></span>
            </a>

        </div> <!-- end row -->
    </header> <!-- end s-header -->

<h1 style="text-align:center;padding-top:100px;color: black;font-size:50px;">Medi-Care Drug Store Management</h1>
<form action="sr">

<table align="center">

<tr>
	<td><h3 style="font-size:20px;">Drug Name</h3></td>
	<td><input type="text" name="name"></td>
</tr>


<tr>
	
	<td><input type="submit" name="Search"></td>
</tr>

</table>
</form>
</body>
</html>