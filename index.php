<!DOCTYPE html>
<html>
    <head>
        <title>Phancy Phoods </title>
    </head>
    <body>
    <div>
        <form action="index.php" method="post">
            <b>Recipe Name:</b> <input type="text" name="name">
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
    
    // Start the session in any php file where you will be using sessions
    session_start();
    
    // Create an array in the Session to hold our cart items
    if (!isset($_SESSION['cart'])){
        $_SESSION['cart'] = array();
    }
    
     // Checks to see if the search form has been submitted
    if (isset ($_GET['query'])) {
        // Get access to our API function
        //include 'wmapi.php';
        $items = getProducts($_GET['query']);
    }
    
    // If the 'itemName' is set, put it in the session cart and direct the user to the shopping cart
    if(isset($_POST['itemName'])){
        // Create associative array for item properties
        $newItem = array();
        $newItem['name'] = $_POST['itemName'];
        //$newItem['price'] = $_POST['itemPrice'];
        //$newItem['img'] = $_POST['itemImg'];
        //$newItem['id'] = $_POST['itemId'];
        
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

    <table border = "1">
        
        <tr>
            <td border><b>Recipe Name</b></td>
    
        </tr>
           
        <div>
            <?php
                
                $name = "";
                
                // if name has info
                if (isset($_POST['name']))
                {
                    $name  = $_POST['name'];
                }
                
                $sql = "SELECT * FROM `Recipe`
                        WHERE name LIKE '%$name%'";
                
                // the ` symbol is needed for the SELECT,
                // * is for selecting EVERYTHING
                $stmt = $dbConn->prepare($sql);
                $stmt->execute();
                $records = $stmt->fetchALL(PDO::FETCH_ASSOC);
                //print_r ($records);

                // the above statement has been replaced by the below
                // for each record, find the name
                // Python dictionary style
                foreach($records as $record){
                    echo '<tr>';
                    echo '<td>' . $record['name'] . '</td>';
                   
                    echo '</tr>';
                }
            ?>
        </div>
        </table>
    </body>
</html>