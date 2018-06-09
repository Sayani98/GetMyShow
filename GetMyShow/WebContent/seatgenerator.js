function generateSeats(n) {
	var i;
	for(i = 0 ; i< n ; i++){
		if(document.body.style.marginRight){	var brk = document.createElement("br");
	    document.body.appendChild(brk);
	    }
	    var x = document.createElement("INPUT");
	    x.type = "checkbox";
	    x.setAttribute("name","seats");
	    x.value = (i+1);
	    document.getElementById("point").appendChild(x);
	    }


	}
