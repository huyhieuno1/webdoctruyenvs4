// slide
var slideIndex = 0;
showSlides();

function showSlides() {
	var i;
	var slides = document.getElementsByClassName("mySlides");
	var dots = document.getElementsByClassName("dot");
	for (i = 0; i < slides.length; i++) {
		slides[i].style.display = "none";  
	}
	slideIndex++;
	if (slideIndex > slides.length) {slideIndex = 1}    
	for (i = 0; i < dots.length; i++) {
		dots[i].className = dots[i].className.replace(" active", "");
	}
	slides[slideIndex-1].style.display = "block";  
	dots[slideIndex-1].className += " active";
	setTimeout(showSlides, 2000); // Change image every 2 seconds
}

// loginForm
var modal 		= document.getElementById('id01');
window.onclick 	= function(event) {
	if (event.target == modal) {
		modal.style.display = "none";
	}
}

//SignupForm
var mod 		= document.getElementById('id02');
window.onclick	= function(event){
	if (event.target == mod) {
		mod.style.display	= "none";
	}
}




