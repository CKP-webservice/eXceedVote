$(document).ready(function() {
  $('select').change(function() {
      var optionValue = $('select').val();
    $('#project1, #project2', '#project3').hide(350);
    switch(optionValue)
    {
    case "Project#1":
      $("#project1").show(350);
      break;
    case "Project#2":
      $("#project2").show(350);
      break;
    case "Project#3"
      $("#project3").show(350);
    }
  });
  $('#vote').click(function() {
    alert('test');
  });
});