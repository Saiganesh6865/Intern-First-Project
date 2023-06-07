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
    <div align="center" style=" width: 500px; margin-top: 200px;margin-left: 460px;background-color: white;"  ><br><br>
        <form action="loginUser" method="post">
        
        <table>
            <tr>
                <td>UserName : </td>
                <td><input type="text" name = "userName"></td>
            </tr>
            <tr>
                <td>Password : </td>
                <td><input type="password" name= "password"></td>
            </tr>
            
        </table>
            <br><br>
            
            <input style="background-color:rgb(38, 143, 250); color: white;" type="submit" value="Login"><br><br>
            <button style="background-color:rgb(38, 143, 250);"><a href="signUpuser.jsp" style="color: white">Sign up</a></button>
            <button  style="background-color:rgb(38, 143, 250);"><a href="index.jsp" style="color: white">Home page</a></button><br><br>
        </form>
    
    </div>
    
    
    </body>
</html>