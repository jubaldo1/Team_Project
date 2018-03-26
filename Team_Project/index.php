<!DOCTYPE html>
<html>
    <head>
        <title>Phancy Phoods </title>
    </head>
    <body>
    <div>
        <form action="index.php" method="post">
             <b>Name:</b> <input type="text" name="name">
             <br> </br>
             <b>Author</b> <input type="text" name="author">
             <br> </br>
             <b>Type:</b> <input type="text" name="type">
             <br> </br>
             <b>Availability:</b>
             <input type="submit" name="Submit">
        </form>
        
    </div>
    
    <?php
    include 'inc/functions.php';
    
    // session starts
    session_start();
    
    // Create an array in the Session to hold our cart items
    if (!isset($_SESSION['cart'])){
        $_SESSION['cart'] = array();
    }
    
     // Checks to see if the search form has been submitted
    if (isset ($_GET['query'])) {
        $items = getProducts($_GET['query']);
    }
    
    // If the 'itemName' is set, put it in the session cart and direct the user to the shopping cart
    if(isset($_POST['itemName'])){
        // Create associative array for item properties
        $newItem = array();
        $newItem['name'] = $_POST['itemName'];
        $newItem['price'] = $_POST['itemPrice'];
        $newItem['img'] = $_POST['itemImg'];
        $newItem['id'] = $_POST['itemId'];
        
        // Check to see if other items with this id are in the array
        // If so, this item isn't new. Only update quantity
        // Must be passed by reference so that each item can be updated!
        foreach($_SESSION['cart'] as &$item){
            if($newItem['id'] == $item['id']){
                $item['quantity'] += 1;
                $found = true;
            }
        }
        
        // else add it to array
        if($found != true){
            $newItem['quantity'] = 1;
            array_push($_SESSION['cart'], $newItem);
        }
    }
?>

    </body>
</html>