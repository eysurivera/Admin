<?php

        $conn = mysqli_connect("localhost","root","","dentasys");


        if(!$conn){
            die("Connection failed ". mysqli_connect_error());
        }else{
           echo "<script>console.log('connection success');</script>";
        }
        session_start();




?>