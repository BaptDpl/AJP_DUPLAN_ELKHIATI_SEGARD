<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
 
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Child</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
</head>
<body onload="load();">
 
        <input type="hidden" id="childId">
        Name: <input type="text" id="name" required="required" name="cname"><br>
        Age: <input type="number" id="age" required="required" name="age"><br>
        User_id: <input type="number" id="user_id" required="required" name="user_id"><br>
        <button onclick="submit();">Submit</button>
     
     
 
        <table id="table" border=1>
            <tr> <th> Name </th> <th> Age </th> <th> User_id </th> <th> Edit </th> <th> Delete </th> </tr>
         
        </table>
             
     
    <script type="text/javascript">
    data = "";
    submit = function(){
          
            $.ajax({
                url:'saveOrUpdate',
                type:'POST',
                data:{childId:$("#childId").val(), cname:$('#name').val(), age:$('#age').val(), userId:$('#user_id').val()},
                success: function(response){
                        alert(response.message);
                        load();    
                }              
            });        
    }
     
    delete_ = function(id){     
         $.ajax({
            url:'delete',
            type:'POST',
            data:{childId:id},
            success: function(response){
                    alert(response.message);
                    load();
            }              
        });
}
     
 
    edit = function (index){
        $("#childId").val(data[index].childId);
        $("#name").val(data[index].cname);
        $("#age").val(data[index].age);
        $("#user_id").val(data[index].user_id);
         
    }
     
    load = function(){ 
    	console.log("function back 2");
        $.ajax({
            url:'list',
            type:'POST',
            success: function(response){
            		console.log("in response");
                    data = response.data;
                    console.log(data);
                    $('.tr').remove();
                    for(i=0; i<response.data.length; i++){                  
                        //$("#table").append("<tr class='tr'> <td> "+response.data[i].user_name+" </td> <td> "+response.data[i].email+" </td> <td> <a href='#' onclick= edit("+i+");> Edit </a>  </td> </td> <td> <a href='#' onclick='delete_("+response.data[i].user_id+");'> Delete </a>  </td> </tr>");
                        $("#table").append("<tr class='tr'> <td> "+response.data[i].cname+" </td> <td> "+response.data[i].age+" </td> <td> "+response.data[i].userId+" </td> <td> <a href='#' onclick= edit("+i+");> Edit </a>  </td> </td> <td> <a href='#' onclick='delete_("+response.data[i].childId+");'> Delete </a>  </td> </tr>");
                    }          
            },
        	error: function(err) {
        		console.log(err);
        	}
        });
         
    }
    
    </script>
     
</body>
</html>