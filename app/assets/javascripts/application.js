// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery3
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree


$(document).ready(function(){
  var $y = 0;
  var $data = "";

  // jQuery methods go here...
   $("#btnCreate").click(function(){
    var $x = $("#number").val()
    alert($x)

    $y = $x;
    console.log($y)

});
      //
      // $.ajax({
      //   type: "POST",
      //   dataType: "json",
      //   url: "#",
      //   cache: false,
      //   success: function (response) {
      //     console.log("pass");
      //     console.log(response);
      //   },
      //   error: function (response) {
      //     console.log("fail");
      //     console.log(response);
      //   }
      // });
      for(i=0;i < gon.number;i++){

           $data  = $data+"<tr>"+
                   "<td>"+ "<input type = 'number'  name = 'row[]' " + '>' +"</td>"+
                   "<td>"+ "<input type = 'number' name = 'col[]' " + '>' +"</td>"+
                   "</tr>"
         }


         $( "#display-body" ).html($data);


$("#submitNo").click(function(){

  

});

});
