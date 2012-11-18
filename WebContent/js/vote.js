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
    if(confirm('Are you sure?')) {
    	alert('Vote Successful');
    	return true;
    }
    else {
    	return false;
    }
   
  });
});

function getRequestObject()
{
	if(window.XMLHttpRequest)
	{
		return (new XMLHttpRequest());
	}
	else if(window.ActiveXObject())
	{
		return (new ActiveXObject("Microsoft.XMLHTTP"));
	}
	else return (null);
}

function ajaxSendPost(selected, button)
{
	var address = "vote-servlet";
	var data = $('#' + selected).val();
	var request = getRequestObject();
	request.open("POST", address, true);
	request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
	request.send(data);
	voteSuccessed(button);
}

function voteSuccessed(button)
{
	$('#' + button).attr("disabled", "disabled");
	$('#' + button).removeClass("btn btn-large btn-primary").addClass("btn btn-large btn-danger");
	$('#' + button).html("<h2>Vote Successed</h2>");
}