$(document).ready(function() {
  $('select').change(function() {
      var optionValue = $('select').val();
    $('#project1, #project2, #project3, #project4, #project5, #project6, #project7, #project8, #project9, #project10').hide(400);
    switch(optionValue)
    {
    case "Project#1":
      $("#project1").show(400);
      break;
    case "Project#2":
      $("#project2").show(400);
      break;
    case "Project#3":
        $("#project3").show(400);
        break;
    case "Project#4":
        $("#project4").show(400);
        break;
    case "Project#5":
        $("#project5").show(400);
        break;
    case "Project#6":
        $("#project6").show(400);
        break;
    case "Project#7":
        $("#project7").show(400);
        break;
    case "Project#8":
        $("#project8").show(400);
        break;
    case "Project#9":
        $("#project9").show(400);
        break;
    case "Project#10":
        $("#project10").show(400);
        break;
    }
  });
  $('#vote').click(function() {
    alert('voted');
  });
});