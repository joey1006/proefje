<script type="text/javascript" src="javascript/javascript.js"></script>
<?php

include "includes/config.php";
include "includes/connection.php";

include "model/getbooks.php";

include "model/insertbooks.php";
include "view/admininsert.php";
include "controller/bookdisplay.php";
//include "controller/bookdisplay.php";


//include "view/search.php";

include "view/head.php";
//include "view/navigation.php";

include "view/filter.php";
include "controller/DummyFilter.php";
//include "view/welcome.php";


// $page = isset($_GET['page'])?$_GET['page']:'Home';

// switch ($page) {
// 	case 'Home':
// 		include 'view/welcome.php';
// 		break;
// 	case '2':
// 		include 'view/loremIpsum.php';
// 		break;
// 	case '3':
// 		include 'view/loremIpsum.php';
// 		break;
// 	case '4':
// 		include 'view/loremIpsum.php';
// 		break;
// 	case '5':
// 		include 'view/loremIpsum.php';
// 		break;
// 	case '6':
// 		include 'view/loremIpsum.php';
// 		break;
// 	default:
// 		include 'view/index.php';
// 		break;
// }

 ?>
 
