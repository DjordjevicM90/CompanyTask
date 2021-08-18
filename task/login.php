<?php 
    session_start();
    require("php/classBase.php");
    require("php/function.php");

    try{
        $db = new Base();

        $output['data'] = "";
        $output['error'] = "";

        if(isset($_GET['login']))
        {
            $email = $_POST['email'];
            $password = $_POST['password'];

            if($email != "" AND $password !="")
            {
                $table = "task_users";
                $columEmail = "user_email";

                if(!$row = $db->selectRow($table, $email, $columEmail))
                {
                    $output['error'] = "ERORR!!!";
                }
                else
                {
                    foreach($row as $obj){
                        $userId = $obj->user_id;
                        $userName = $obj->user_name;
                        $userEmail = $obj->user_email;
                    }
                    createSession($userId, $userName, $userEmail);

                    $output['data'] = "index.php";
                }

            }
            else
            {
                $output['error'] = "You must fill in all the fields.";
            }
        }

        if(isset($_GET['logoff'])){
            destroySession();
            header("location: index.php");
        }

        echo JSON_encode($output, 256);

    }catch (Exception $e){
        echo $e->getMessage();
    }
?>