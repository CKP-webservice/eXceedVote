
$(document).ready(function(){

		$('#addproject-form').validate({
	    rules: {
	      name: {
	        required: true
	      },
	      description: {
	        required: true
	      },
	      short_description: {
	        required: true
	      },
	      imageurl1: {
	    	url: true,
	        required: true
	      },
	      imageurl2: {
	    	url: true,
	    	required: true
		  },
		  imageurl3: {
			url: true,
			required: true
		  }
	    },
	    highlight: function(label) {
	    	$(label).closest('.control-group').addClass('error');
	    },
	    success: function(label) {
	    	label
	    		.text('OK!').addClass('valid')
	    		.closest('.control-group').addClass('success');
	    }
	  });
	  
});