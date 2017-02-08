function change_color(event) {
	var pet = document.getElementById("about-my-pet")
	event.target.style.border = "10px solid red";
};


function change_p(event) {
	var els = document.getElementsByTagName("em");
	var el = els[0];
	el.style.border = "10px solid green"; 
};


var pet = document.getElementById("lizard-photo")
pet.addEventListener("mouseover", change_color);



change_p();	
change_color();
