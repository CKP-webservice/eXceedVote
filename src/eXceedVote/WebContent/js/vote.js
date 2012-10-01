$(document).ready(function() {
  $('select').change(function() {
      var optionValue = $('select').val();
    $('#project1, #project2').hide(500);
    switch(optionValue)
    {
    case "Project#1":
      $("#project1").show(500);
      break;
    case "Project#2":
      $("#project2").show(500);
      break;
    }
  });
  $('#vote').click(function() {
    alert('test');
  });
});