$(document).ready(function() {
  $('select').change(function() {
      var optionValue = $('select').val();
    $('#project1, #project2, #project3, #project4, #project5, #project6, #project7, #project8, #project9, #project10').hide(400);
    //alert(optionValue);
    switch(optionValue)
    {
    case "1":
      $("#project1").show(400);
      break;
    case "2":
      $("#project2").show(400);
      break;
    case "3":
        $("#project3").show(400);
        break;
    case "4":
        $("#project4").show(400);
        break;
    case "5":
        $("#project5").show(400);
        break;
    case "6":
        $("#project6").show(400);
        break;
    case "7":
        $("#project7").show(400);
        break;
    case "8":
        $("#project8").show(400);
        break;
    case "9":
        $("#project9").show(400);
        break;
    case "10":
        $("#project10").show(400);
        break;
    }
  });
 
  $('button').click(function() {
	    alert("test");
	    
	  });
  
});