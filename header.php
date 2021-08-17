<?php
        session_start();
        require("php/classBase.php");
        require("php/function.php");
    
        try{
            $db = new Base;
            if(!$db)
            die();
            
        }catch (Exception $e){
            echo $e->getMessage();
        }
?>

<nav class="navbar navbar-expand-lg navbar-light bg-dark ">
  <div class="container-fluid">
    
    <div class="collapse navbar-collapse" id="navbarSupportedContent">

      <ul class="navbar-nav me-auto mb-2 mb-lg-0">

        <li class="nav-item">
            <a href="#" class="nav-link text-light" data-bs-toggle="modal" data-bs-target="#signIn">Sign in</a>
        </li>

        <li class="nav-item">
          <a class="nav-link" href="#">Sing out</a>
        </li>

      </ul>

    </div>
    
  </div>
</nav>

 <!-- Modal Sign in-->
 <div class="modal fade" id="signIn" tabindex="-1" aria-labelledby="enrollLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title " id="enrollLabel">Sign in</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form >
                        <div class="mb-3">
                            <label for="first-name" class="col-form-label">Email name</label>
                            <input type="email" class="form-control" id="email-login">
                        </div>
                        <div class="mb-3">
                            <label for="first-name" class="col-form-label">Password</label>
                            <input type="password" class="form-control" id="password-login">
                        </div>    
                    </form>
                </div>

                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary" id="btn-login">Submit</button>
                </div>
                <p id="answer-login" class="text-center"></p>
            </div>
        </div>
    </div>