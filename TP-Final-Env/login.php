<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title> Login </title>

    <style>
     body {
        background-color:khaki;
}

      .text-red{
        color: red;
        background-color:khaki;
      }
    </style>




  </head>
  <body>
<h1> Projet final</h1>
<h2> Ariba abdelkader 2195300 </h2>
    </br></br>
  



    <form action="authentication.php" method="post">
      <label> Username </label>
      <input type="email" name="username" required></br>
      <label> Password </label>
      <input type="password" name="password" required></br>
      

      <input type="submit" value="Se connecter"/>

    </form>
       
    <?php

$msg = null;
if(isset($_GET['msg'])){
  if($_GET['msg']==1)
  $msg = 'Utilisateur inexistant ';
  
  else if($_GET['msg']==2){
    $msg = 'Mot de passe erroné  ';
  }
}

echo "<span class='text-red'>".$msg."</span>";

    ?>
 

  </body>
</html>








