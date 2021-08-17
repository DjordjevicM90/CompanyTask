<?php
    function createSession($id, $name, $email)
    {
        $_SESSION['user_id'] = $id;
        $_SESSION['user_name'] = "$name";
        $_SESSION['user_email'] = $email;
    }

    function login()
    {
        if(isset($_SESSION['user_id']) AND isset($_SESSION['user_name']) AND isset($_SESSION['user_email']))
        {
            return true;
        }
        return false;
    }

    function destroySession(){
        session_unset();
        session_destroy();
        header("location: index.php");
    }
?>