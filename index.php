<?php
     session_start();
     require("php/classBase.php");
     require("php/function.php");
    try{
        $db= new Base;
    }catch(Exception $e){
        echo $e->getMessage();
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

    <!-- Bootstrap CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <script src="JScript/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

    <script src="JScript/jquery-3.6.0.js"></script>
    <script src="JScript/products.js"></script>
    <script src="JScript/login.js"></script>

    <link href="css/style.css" rel="stylesheet">

    <title>Task</title>
</head>
<body>

    <?php include("header.php");
        if(!login()){

    ?>
        <div id="message-login">
            <h1>Please sign in</h1>
        </div>

    <?php
    }
    else {

    //////// IMPORT CSV FILE/////////

    // if user click on import csv file button, then check that file, read from that file and import in table products in our database

        if(isset($_POST['btn-import']))
        {
           
            $table = "products";
            $fileName = $_FILES['csv-file']['tmp_name'];
            

            if($_FILES['csv-file']['size'] > 0)
            {
                $file = fopen($fileName , "r");

                while(($column = fgetcsv($file, 10000 , ",")) !== false){
                    $data = array (
                        "model_number" => $column[0],
                        "category_name" => $column[1],
                        "deparment_name" => $column[2],
                        "manufacturer_name" => $column[3],
                        "upc" => $column[4],
                        "sku" => $column[5],
                        "regular_price" => $column[6],
                        "sale_price" => $column[7],
                        "description" => $column[8],
                        "url" => $column[9]
                    );

                    if($db->insert($table, $data)==true)
                    {
                        
                    }
                    else{
                        echo "Sorry, you can't upload this file, pls try again.";
                    }

                }
            }
        }
    ?>
        <div class="px-5 my-5">
            <form action="index.php" method="post" name="uploadCsv" enctype="multipart/form-data">

                <input type="file" name="csv-file" id="csv-file" accept=".csv"><br><br>
                <button type="submit" name="btn-import" >Import csv file</button>   

            </form>
            
        </div>

<!-- ////////END OF IMPORT CSV FILE///////// -->

        
        <div id="showAll-products">
            
        </div>

        

    <?php
    }
    ?>

</body>
</html>