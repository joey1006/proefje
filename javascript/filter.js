var docuArray = ['Thriller', 'Kinderboeken','Stripboeken','Kunst'];

document.addEventListener("DOMContentLoaded", function(event) {
  var Thriller = document.getElementById("Thriller");
  var Kinderboeken = document.getElementById("Kinderboeken");
  var Kunst = document.getElementById("Kunst");
  var Stripboeken = document.getElementById("Stripboeken");

  if (Thriller && Kinderboeken && Kunst && Stripboeken) {
    Thriller.addEventListener('click', function(){Filter("Thriller");}, false);
    Kinderboeken.addEventListener('click', function(){Filter("Kinderboeken");}, false);
    Kunst.addEventListener('click', function(){Filter("Kunst");}, false);
    Stripboeken.addEventListener('click', function(){Filter("Stripboeken");}, false);
  
  }
});

function Filter(category) {
    console.log("Category = " + category);
    var bookclass = document.querySelectorAll('.bookitem');
    bookclass.forEach(element => {
        element.style.display = "none";
      });
    var query = "." + category;
    var categoryclass = document.querySelectorAll(query);
    console.log("Categoryclass = " + categoryclass);
      categoryclass.forEach(element => {
        console.log("Categorychangehappening = " + categoryclass);
        element.style.display = "";          
      });
}

