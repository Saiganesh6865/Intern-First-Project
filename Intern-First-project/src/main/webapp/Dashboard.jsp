<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <title>Document</title>
    <style>
       .maindiv{
            
            border: 4px solid black;

            width: 600px;
       }
      a{
        color: black;
      }
        button{
            position: absolute;
            top: 126px;
            left: 510px;
        }
        table,tr,td{
            border: 2px solid black;
            
        }
        
        #add1,#add2{
            border: 2px  solid black;
            width: 100px;
            position: absolute;
           
            margin-left: 20px;
        }
        #add1{
            top: 224px;
        }
        #add2{
            top: 332px;
        }
        #add3{
            top: 332px;
            border: 2px  solid black;
            width: 80px;
            position: absolute;
           
            margin-left: 248px;
        }

    </style>
</head>
<body style="align-items: center;" >
    <br><br><br>
	 <h5 align="center" style="border: 2px solid black;width: 100px;position: absolute;top: 25px;left: 240px;">Dashboard</h5>
<div class="maindiv">
    <br>
    <div class="div1" style="border: 2px solid black;width: 450px;margin-left: 20px;">
        <h5 > current time:  <span id = "date now"></span>  </h5>   
        <h5>Last login time :   </h5>  <span></span>
    </div > 
    <button><a href="home.jsp">log Out</a></button>

    <br><br><br><br>

    

    <div class="div2">
        <h5 align="center" id="add1">ADD TASK</h5>
        <table style="margin-left: 20px;" >
            
            <tr >
                <td>Description</td>
                <td>attachment</td>
                <td>Add attachment🔗</td>
                <td ><input style="border: 0px solid black;" type="submit"></td>
            </tr>
        </table>
    </div>
    <br><br><br><br>
    <div class="div2">
        <h5 align="center" id="add2">ALL TASKS</h5>
        <h5 align="center" id="add3">REFRESH</h5>

        <table style="margin-left: 20px;" >
            
            <tr >
                <td>Description</td>
                <td>attachment</td>
                <td>attachments🔗</td>
                <td ><input style="border: 0px solid black;" type="submit"></td>
            </tr>
        </table>
        <br><br><br><br>
    </div>
</div>
<script >
var dt= new Date();
document.getElementById('date now').innerHTML=dt;
</script>
</body>
</html>