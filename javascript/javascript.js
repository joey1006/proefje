var test = document.getElementById("image");

image.addEventListener("mouseover", function( event ) {   
    event.target.style.color = "purple";

    // reset the color after a short delay
    setTimeout(function() {
      event.target.style.color = "";
    }, 500);
  }, false);
