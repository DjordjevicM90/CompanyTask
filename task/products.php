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


        /////// Change product ///////////
        if(isset($_GET['change-products']))
        {
            $table = "products";
            $column = "product_id";
            $id = $_POST['productId'];
            $model = $_POST['model'];
            $category = $_POST['category'];
            $deparment = $_POST['deparment'];
            $manufacturer = $_POST['manufacturer'];
            $upc = $_POST['upc'];
            $sku = $_POST['sku'];
            $regularPrice = $_POST['regularPrice'];
            $salePrice = $_POST['salePrice'];
            $description = $_POST['description'];
            $url = $_POST['url'];

            $data = array(
                "model_number" =>$model,
                "category_name" =>$category,
                "deparment_name" =>$deparment,
                "manufacturer_name" =>$manufacturer,
                "upc" =>$upc,
                "sku" =>$sku,
                "regular_price" =>$regularPrice,
                "sale_price" =>$salePrice,
                "description" =>$description,
                "url" =>$url
            );

            if($db->update($table, $id, $data, $column) !== true)
            {
                $output['error'] = "Error, please try again.";
            }
            else
            {
                $output['data'] = "You have successfully changed the category name";
            }
        }
        ///////End of Change product ///////////

        /////// Delete product ///////////
        if(isset($_GET['delete-product']))
        {
            $table = "products";
            $id = $_POST['id'];
            $column = "product_id";

            if($db->delete($table, $id, $column) != true)
            {
                $output['error'] = "Error, please try again.";
            }
            else
            {
                $output['data'] = "You have successfully delete the category";
            }
        }
        ///////End of Delete product ///////////
        echo JSON_encode($output, 256);

    }catch (Exception $e){
        echo $e->getMessage();
    }
?>