<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
 
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Ddate</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
</head>
<body onload="load();">
 
<!--         <input type="hidden" id="userId"> -->
        Dday: <input type="text" id="dday" required="required" name="dday"><br>
        Off Day: <input type="checkbox" id="offday" required="required" name="offday"><br>
        <button onclick="submit();">Submit</button>
     
     
 
        <table id="table" border=1>
            <tr> <th> Dday </th> <th> Off Day </th> </tr>
         
        </table>
             
     
    <script type="text/javascript">
    data = "";
    submit = function(){
            $.ajax({
                url:'saveOrUpdate',
                type:'POST',
                data:{dday:$("#dday").val(), offday:$('#offday').val()},
                success: function(response){
                        alert(response.message);
                        load();    
                },
                error: function(response){
                		console.log(response);
                }
            });        
    }
     
    delete_ = function(dday){     
         $.ajax({
            url:'delete',
            type:'POST',
            data:{dday: dday},
            success: function(response){
            		console.log("in delete..."); //test log
                    alert(response.message);
                    load();
            }              
        });
}
     
 
    edit = function (index){
		//var d = new Date(data[index].dday.replace("v.", "")); //transform into date format
		//console.log(d); //test log
		
        $("#dday").val(data[index].dday);
        $("#offday").val(data[index].offday);
         
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
                        $("#table").append("<tr class='tr'> <td> "
                        				  +response.data[i].dday
                        				  +" </td> <td> "+response.data[i].offday
                        				  +" </td> <td> <a href='#' onclick= edit("+i+");> Edit </a>  </td> </td> "
                        				  +"<td> <a href='#' onclick='delete_(&#39;"
                        				  +response.data[i].dday
                        				  +"&#39;);'> Delete </a>  </td> </tr>");
                    }          
            }
        });
         
    }
    
    $("#offday").on('change', function() {
      if ($(this).is(':checked')) {
        $(this).attr('value', 'true');
      } else {
        $(this).attr('value', 'false');
      }
    });
    
    </script>
     
</body>
</html>