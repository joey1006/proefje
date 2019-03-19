var docuArray = ['Thriller', 'Erotic','Biografie','Fantasy'];

document.addEventListener("DOMContentLoaded", function(event) {
  var Thriller = document.getElementById("Thriller");
  var Erotic = document.getElementById("Erotic");
  var Fantasy = document.getElementById("Fantasy");
  var Biografie = document.getElementById("Biografie");

  var Item = document.querySelectorAll(".ProcessItem");



  if (Thriller && Erotic && Fantasy && Biografie) {
    Thriller.addEventListener('click', function(){Filter("Thriller");}, false);
    Erotic.addEventListener('click', function(){Filter("Erotic");}, false);
    Fantasy.addEventListener('click', function(){Filter("Fantasy");}, false);
    Biografie.addEventListener('click', function(){Filter("Biografie");}, false);
  
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


function FilterRequired() {
  var itemClass = document.querySelectorAll('.processItem');
  itemClass.forEach(element => {
    element.style.display = "none";
  });
  var stripedClass = document.querySelectorAll('.Striped');
  stripedClass.forEach(element => {
    element.style.display = "none";
  });
  var requiredClass = document.querySelectorAll('.Required');
  requiredClass.forEach(element => {
    element.style.display = "";
  });
}
function FilterReset() {
  var StripedClass = document.querySelectorAll('.Striped');
  StripedClass.forEach(element => {
    element.style.display = "";
  });
  var itemClass = document.querySelectorAll('.processItem');
  itemClass.forEach(element => {
    element.style.display = "";
  });
}