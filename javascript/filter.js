var docuArray = ['Kinderboeken','Computer','Stripboeken','Kunst','Koken','Natuur','Gezondheid','Spiritualiteit','Youngadult','Drama','Thriller','Reisgidsen','Fantasy','Sporthobby'];

document.addEventListener("DOMContentLoaded", function(event) {

  var Kinderboeken    = document.getElementById("Kinderboeken");
  var Computer        = document.getElementById("Computer");
  var Stripboeken     = document.getElementById("Stripboeken");
  var Kunst           = document.getElementById("Kunst");
  var Koken           = document.getElementById("Koken");
  var Natuur          = document.getElementById("Natuur");
  var Gezondheid      = document.getElementById("Gezondheid");
  var Spiritualiteit  = document.getElementById("Spiritualiteit");
  var Youngadult      = document.getElementById("Youngadult");
  var Drama           = document.getElementById("Drama");
  var Thriller        = document.getElementById("Thriller");
  var Reisgidsen      = document.getElementById("Reisgidsen");
  var Fantasy         = document.getElementById("Fantasy");
  var Sporthobby      = document.getElementById("Sporthobby");

  // if (Kinderboeken & Computer & Stripboeken & Kunst & Koken & Natuur & Gezondheid & Spiritualiteit & Youngadult & Drama & Thriller & Reisgidsen & Fantasy & Sporthobby) {
  if (Kinderboeken) {

    var bookclass = document.querySelectorAll('.bookitem');
    bookclass.forEach(element => {
        element.style.display = "none";
      });

    Kinderboeken  .addEventListener('click', function(){Filter("Kinderboeken");}, false);
    Computer      .addEventListener('click', function(){Filter("Computer");}, false);
    Stripboeken   .addEventListener('click', function(){Filter("Stripboeken");}, false);
    Kunst         .addEventListener('click', function(){Filter("Kunst");}, false);
    Koken         .addEventListener('click', function(){Filter("Koken");}, false);
    Natuur        .addEventListener('click', function(){Filter("Natuur");}, false);
    Gezondheid    .addEventListener('click', function(){Filter("Gezondheid");}, false);
    Spiritualiteit.addEventListener('click', function(){Filter("Spiritualiteit");}, false);
    Youngadult    .addEventListener('click', function(){Filter("Youngadult");}, false);
    Drama         .addEventListener('click', function(){Filter("Drama");}, false);
    Thriller      .addEventListener('click', function(){Filter("Thriller");}, false);
    Reisgidsen    .addEventListener('click', function(){Filter("Reisgidsen");}, false);
    Fantasy       .addEventListener('click', function(){Filter("Fantasy");}, false);
    Sporthobby    .addEventListener('click', function(){Filter("Sporthobby");}, false);
    
  }
});

function Filter(category) {
  
    // console.log("Category = " + category);
    // var bookclass = document.querySelectorAll('.bookitem');
    // bookclass.forEach(element => {
    //     element.style.display = "none";
        
    //   });
    var query = "." + category;
    var categoryclass = document.querySelectorAll(query);
      categoryclass.forEach(element => {
        element.style.display = "";          
      });

    var CategoryIcons = document.querySelectorAll('.CategoryIcons');
    CategoryIcons.forEach(element => {
      element.style.display = "none";          
    });
}

