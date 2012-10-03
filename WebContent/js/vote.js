$(document).ready(function() {
  $('select').change(function() {
      var optionValue = $('select').val();
    $('#project1, #project2').hide(350);
    switch(optionValue)
    {
    case "Project#1":
      $("#project1").show(350);
      break;
    case "Project#2":
      $("#project2").show(350);
      break;
    }
  });
  $('#vote').click(function() {
    alert('test');
  });
});