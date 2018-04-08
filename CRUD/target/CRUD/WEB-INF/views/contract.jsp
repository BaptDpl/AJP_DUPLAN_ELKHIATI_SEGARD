<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
 
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>contract</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
</head>
<body onload="load();">
 
        <input type="hidden" id="contractId">
        Regular: <input type="checkbox" id="regular" name="regular"><br>
        ChildId: <input type="text" id="childId" required="required" name="childId"><br>
        StartDay: <input type="date" id="startDay" required="required" name="startDay"><br>
        startMorning: <input type="checkbox" id="startMorning" required="required" name="startMorning"><br>
        endDay: <input type="date" id="endDay" required="required" name="endDay"><br>
        endMorning: <input type="checkbox" id="endMorning" required="required" name="endMorning"><br>
        <button onclick="submit();">Submit</button>
     
     
     
 
        <table id="table" border=1>
            <tr> <th> Regular </th> <th> ChildId </th> <th> StartDay </th> <th> startMorning </th> <th> endDay </th> <th> endMorning </th> </tr>
        </table>
             
     
    <script type="text/javascript">
    data = "";
    submit = function(){
          
            $.ajax({
                url:'saveOrUpdate',
                type:'POST',
                data:{contractId:$("#contractId").val(), regular:$('#regular').val(), childId:$('#childId').val(), 
                      startDay:$('#startDay').val(), startMorning:$('#startMorning').val(), endDay:$('#endDay').val(), endMorning:$('#endMorning').val()},
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
            data:{contractId:id},
            success: function(response){
                    alert(response.message);
                    load();
            }              
        });
}
     
 
    edit = function (index){
        $("#userId").val(data[index].userId);
        $("#name").val(data[index].userName);
        $("#phone").val(data[index].phone);
        $("#email").val(data[index].email);
        $("#userId").val(data[index].userId);
        $("#name").val(data[index].userName);
        $("#phone").val(data[index].phone);
        $("#email").val(data[index].email);
         
    }
     
     
    load = function(){ 
        $.ajax({
            url:'list',
            type:'POST',
            success: function(response){
                    data = response.data;
                    console.log(data);
                    $('.tr').remove();
                    for(i=0; i<response.data.length; i++){                  
                        //$("#table").append("<tr class='tr'> <td> "+response.data[i].user_name+" </td> <td> "+response.data[i].email+" </td> <td> <a href='#' onclick= edit("+i+");> Edit </a>  </td> </td> <td> <a href='#' onclick='delete_("+response.data[i].user_id+");'> Delete </a>  </td> </tr>");
                        $("#table").append("<tr class='tr'> <td> "+response.data[i].regular+" </td> <td> "+response.data[i].childId+" </td> <td> "+response.data[i].startDay+" </td> <td> "+response.data[i].startMorning+" </td> <td> "+response.data[i].endDay+" </td>  <td> "+response.data[i].endMorning+" </td> <td> <a href='#' onclick= edit("+i+");> Edit </a>  </td> </td> <td> <a href='#' onclick='delete_("+response.data[i].contractId+");'> Delete </a>  </td> </tr>");
                    }          
            }              
        });
         
    }
    
    </script>
     
</body>
</html>