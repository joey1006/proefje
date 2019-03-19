<script type="text/javascript" src="javascript/javascript.js"></script>
<?php

//include "includes/config.php";
//include "includes/connection.php";

//include "view/view_category.php";

// include "model/getbooks.php";

// include "model/insertbooks.php";
// include "view/admininsert.php";
//include "controller/bookdisplay.php";
// include "controller/bookdisplay.php";

//include "view/search.php";

include "view/head.php";
//include "view/navigation.php";
//
//include "model/get_category.php";
//
//include "view/filter.php";
//include "controller/DummyFilter.php";
//include "view/welcome.php";


 $page = isset($_GET['page'])?$_GET['page']:'Home';

 switch ($page) {
    case 'Home';
        include "includes/config.php";
        include "includes/connection.php";
        include 'view/camera.php';
        break;
 	case 'categories':
        include 'view/filter_joey.php';
        include "includes/config.php";
        include "includes/connection.php";
 		include 'model/get_category.php';
        include 'view/goBack.php';
        include "controller/DummyFilter.php";
         include "view/view_category.php";
 		break;
 	case 'products':
        include "includes/config.php";
        include "includes/connection.php";
        include 'view/goBack.php';
 		include "controller/DummyFilter.php";
         include "view/view_category.php";
 		break;
 	default:
        include "includes/config.php";
        include "includes/connection.php";
        include 'view/camera.php';
 		break;
 }

 ?>
 
 
 
<!-- Voorbeeld voor page switch -->
 <?php 

//$title = '';
//
//$page = isset($_GET['page'])?$_GET['page']:'Home';



//switch ($page) {
//	case 'Home':
//        include 'view/head.php';
//		include 'view/home.php';
//		break;
//	case 'page1':
//        $title = 'Seduce Your partner';
//        include 'config/db.php';
//        include 'view/head.php';
//        include 'view/nav.php';
//		include 'view/page1.php';
//        include 'view/footer.html';
//		break;
//	case 'addition':
//       include 'config/db.php';
//        include 'view/head.php';
//        include 'view/nav.php';
//        include 'view/Acces.php';
//		include 'view/addition.php';
//        include 'view/footer.html';
//		break;
//	case 'user':
//        include 'config/db.php';
//        include 'view/head.php';
//        include 'view/nav.php';
//        include 'view/Acces.php';
//		include 'view/user.php';
//        include 'view/footer.html';
//		break;
//	default:
//        include 'view/head.php';
//        include 'view/nav.php';
//		include 'view/home.php';
//		break;
//}

 ?>
 
