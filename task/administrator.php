<?php
     session_start();
     require("php/classBase.php");
     require("php/function.php");
    try{
        $db= new Base;

        if(!login())
        {
            header("location: index.php");
            die();
        }
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

    <!-- Bootstrap CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <script src="JScript/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

    <script src="JScript/jquery-3.6.0.js"></script>
    <script src="JScript/products.js"></script>
    <script src="JScript/administrator.js"></script>
    <script src="JScript/login.js"></script>

    <link href="css/style.css" rel="stylesheet">

    <title>Document</title>
</head>
<body>

<?php include("header.php")?>

<div class="d-flex justify-content-between px-5 container">
    <!-- SECTION OF UPDATE OR DELET CATEGORY -->
    <div class="update-delete-category px-5">

        <h3>Change or Delete category</h3>

        <form action="index.php" method="post" name="category" >
    
            <select  name="select" id="select">  
                <option value="0">Chose category</option>
                <?php
                    $table = "category_products";

                    $row = $db->selectAll($table);
                    
                        foreach($row as $obj)
                        {
                            $categoryId = $obj->category_id;
                            $categoryName = $obj->category_name;

                            echo "<option value='{$categoryId}' data-id='$categoryId' data-name='$categoryName'>$categoryName</option>";
                        }
                    
                ?>
            </select> <button type="button" id="btn-chose-category">Chose category</button> <br><br>
            
            <input type="text" id="category-id" disabled><br><br>

            <button type="button" id="btn-change-category" >Change</button> 
            <button type="button" id="btn-delete-category" >Delete</button>   

        </form>

        <div id="message"></div>

    </div>
    <!--END OF SECTION OF UPDATE OR DELET CATEGORY -->


    
    <!-- SECTION OF UPDATE OR DELET PRODUCTS -->
    <div class="update-delete-product px-5">

        <h3>Change or Delete product</h3>

        <form action="index.php" method="post" name="product" >

            <select  name="select-product" id="select-product">  
                <option value="0">Chose category</option>
                

            </select> <button type="button" id="btn-chose-product" >Chose product</button> <br><br>
            
            <label>Product id</label><br>
            <input type="text" id="product-id" disabled><br><br>

            <label>Model number</label><br>
            <input type="text" id="model_number" disabled><br><br>

            <label>Category Name</label><br>
            <input type="text" id="category_name" disabled><br><br>

            <label>Deparment Name</label><br>
            <input type="text" id="deparment_name" disabled><br><br>

            <label>Manufacturer Name</label><br>
            <input type="text" id="manufacturer_name" disabled><br><br>

            <label>Upc</label><br>
            <input type="text" id="upc" disabled><br><br>

            <label>Sku</label><br>
            <input type="text" id="sku" disabled><br><br>

            <label>Regular price</label><br>
            <input type="text" id="regular_price" disabled><br><br>

            <label>Sale price</label><br>
            <input type="text" id="sale_price" disabled><br><br>

            <label>Description</label><br>
            <input type="text" id="description" disabled><br><br>

            <label>Url</label><br>
            <input type="text" id="url" disabled><br><br>

            <button type="button" id="btn-change-product" >Change</button> 
            <button type="button" id="btn-delete-product" >Delete</button>   

        </form>

        <div id="message-product"></div>
    </div>
</div>
    <!--END OF SECTION OF UPDATE OR DELET PRODUCTS -->

</body>
</html>