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
        Regular: <input type="checkbox" id="checkbox1" name="regular" value="false"><br>
        ChildId: <input type="text" id="childId" required="required" name="childId"><br>
        StartDay: <input type="text" id="startDay" required="required" name="startDay"><br>
        startMorning: <input type="checkbox" id="checkbox2" required="required" name="startMorning" value="false"><br>
        endDay: <input type="text" id="endDay" required="required" name="endDay"><br>
        endMorning: <input type="checkbox" id="checkbox3" required="required" name="endMorning" value="false"><br>
        <button onclick="submit();">Submit</button>
     
     
     
 
        <table id="table" border=1>
            <tr> <th> Regular </th> <th> ChildId </th> <th> StartDay </th> <th> StartMorning </th> <th> EndDay </th> <th> EndMorning </th> </tr>
        </table>
             
     
    <script type="text/javascript">
    data = "";

    $('#checkbox-value').text($('#checkbox1').val());

    $("#checkbox1").on('change', function() {
      if ($(this).is(':checked')) {
        $(this).attr('value', true);
      } else {
        $(this).attr('value', false);
      }
      
      $('#checkbox-value').text($('#checkbox1').val());
    });

    $('#checkbox-value').text($('#checkbox2').val());

    $("#checkbox2").on('change', function() {
      if ($(this).is(':checked')) {
        $(this).attr('value', true);
      } else {
        $(this).attr('value', false);
      }
      
      $('#checkbox-value').text($('#checkbox2').val());
    });

    $('#checkbox-value').text($('#checkbox3').val());

    $("#checkbox3").on('change', function() {
      if ($(this).is(':checked')) {
        $(this).attr('value', true);
      } else {
        $(this).attr('value', false);
      }
      
      $('#checkbox-value').text($('#checkbox3').val());
    });

    
    submit = function(){

        	
          
            $.ajax({
                url:'saveOrUpdate',
                type:'POST',
                data:{contractId:$("#contractId").val(), regular:$('#checkbox1').val(), childId:$('#childId').val(), 
                      startDay:$('#startDay').val(), startMorning:$('#checkbox2').val(), endDay:$('#endDay').val(), endMorning:$('#checkbox3').val()},
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
    	$("#contractId").val(data[index].contractId);
        $("#checkbox1").val(data[index].regular);
        $("#childId").val(data[index].childId);
        $("#startDay").val(data[index].startDay);
        $("#checkbox2").val(data[index].startMorning);
        $("#endDay").val(data[index].endDay);
        $("#checkbox3").val(data[index].endMorning);
   
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