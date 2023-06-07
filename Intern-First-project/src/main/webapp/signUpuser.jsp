<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Document</title>
    <style>
        body{
            background-image: linear-gradient( rgb(84, 173, 241),rgb(248, 248, 248),rgb(84, 173, 241));
        }
    </style>
</head>
<body>
    <div align="center" style=" background-color: white;width: 300px;margin-top: 200px;margin-left: 600px;"><br><br>
        <form action="signUpuser" method="post">
            <h3  style="color: red;">  user details</h3> 
            <table>
                <tr>
                <td>Id : </td>
                <td><input type="text" name="id"></td>
                </tr>
                <tr>
                <td>Name : </td>
                <td><input type="text" name="name"> </td>
                </tr>
                <tr>
                <td>Address : </td>
                <td><input type="text" name="address"></td>
                </tr>
                <tr>
                <td>Email : </td>
                <td><input type="email" name="email"></td>
                </tr>
                <tr>
                <td>DOB : </td>
                <td><input type="date" name="dob"></td>
                </tr>
                <tr>
                <td>UserName : </td>
                <td><input type="text" name="userName"></td>
                </tr>
                <tr>
                <td>Password : </td>
                <td><input type="password" name="password"></td>
                </tr>
            </table>
            <br><br>
            
            
            <input type="submit" value="Create User" style="background-color:rgb(38, 143, 250); color: white; "><br><br>
            <button style="background-color:rgb(38, 143, 250); "><a href="login.jsp" style="color: white">Log in page</a> </button>
            <button style="background-color:rgb(38, 143, 250); "><a href="home.jsp" style="color: white">Home page</a> </button><br><br>
            
            
        </form>
        </div>
    </body>
</html>