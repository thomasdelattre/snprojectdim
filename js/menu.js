
$(document).ready(function(){
   
   $("#menu a").mouseover(function(){
       $(this).css("color", "lightgray");
       $(this).css("border-bottom", "solid lightgray");
   });
       $("#menu a").mouseout(function(){
           $(this).css("color", "white");
       $(this).css("border-bottom", "none");
   });
});
