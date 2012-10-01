$(document).ready(function() {
  $('#projects').change(function() {
    alert('test');
      var optionValue = $("#projects").val();
    $('#project1, #project2').hide();
    switch(optionValue)
    {
    case 1:
      $("#project1").show();
      break;
    case 2:
      $("#project2").show();
      break;
    }
  });
  $('#vote').click(function() {
    alert('test');
  });
});