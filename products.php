<?php
    session_start();
    require("php/classBase.php");
    require("php/function.php");

    $output['data'] = "";
    $output['error'] = "";

    try{
        $db = new Base();
        

        /////// show all products  ///////////
        if(isset($_GET['showAll-products']))
        {
            $table = "products";

            if($db->selectAll($table))
            {
                $output['data'] = $db->selectAll($table);
            }
            else
            {
                $output['error'] = "Error!";
            }
        }
        /// end of show all products  ///////////



         /////// show products by special category ///////////

        if(isset($_GET['category-products']))
        {
            $table = "products_view";
            $category = $_POST['categoryType'];
            $column = "category_id";

            if($db->selectRow($table,$category, $column))
            {
                $output['data'] = $db->selectRow($table,$category, $column);
            }
            else
            {
                $output['error'] = "Error!";
            }
            
        }
        /// end of show products by special category ///////////


        echo JSON_encode($output, 256);

    }catch (Exception $e){
        echo $e->getMessage();
    }
?>