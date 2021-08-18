<?php
    session_start();
    require("php/classBase.php");
    require("php/function.php");

    $output['data'] = "";
    $output['error'] = "";

    try{
        $db = new Base();

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

        echo JSON_encode($output, 256);
    }catch (Exception $e){
        echo $e->getMessage();
    }
?>