<?php
    session_start();
    require("php/classBase.php");
    require("php/function.php");

    try{
        $db = new Base;

        if(isset($_GET['change-category']))
        {
            $table = "category_products";
            $column ="category_id";
            $id = $_POST['id'];
            $name = $_POST['name'];

            $data = array(
                "category_name" =>$name
            );

            if($db->update($table, $id, $data, $column) != true)
            {
                $output['error'] = "Error, please try again.";
            }
            else
            {
                $output['data'] = "You have successfully changed the category name";
            }
        }

        if(isset($_GET['delete-category']))
        {
            $table = "category_products";
            $id = $_POST['id'];
            $column = "category_id";

            if($db->delete($table, $id, $column) != true)
            {
                $output['error'] = "Error, please try again.";
            }
            else
            {
                $output['data'] = "You have successfully delete the category";
            }
        }

        echo JSON_encode($output, 256);

    }catch(Exception $e){
        echo $e->getMessage();
    }
?>