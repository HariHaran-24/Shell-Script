<?php 
$name=$_POST['Name'];
$phone=$_['Phone'];
$email=$_['Email'];
$address=$_['Address'];
$password=$_['Password'];
$conn=new mysqli("localhost","root","hari123","new");

if ($conn->connect_error) {
    die('Could not connect to the database.');
}
else
{
    $Select = "SELECT phone FROM person WHERE phone = ?";
    $stmt = $conn->prepare($Select);
    $stmt->bind_param("s", $phone);
    $stmt->execute();
    $stmt->bind_result($resultphone);
    $stmt->store_result();
    $stmt->fetch();
    $n = $stmt->num_rows;
    $stmt->close();
    if($n==0)
    {
        
        $Insert="INSERT INTO person(name,email,phone,address,password) values(?,?,?,?,?)";
        $stmt = $conn->prepare($Insert);
        $stmt->bind_param("sssss",$name,$email,$phone,$address,$password);
        $stmt->execute();
        $stmt->close();
    }
    else
    {
        echo "Phone number already registered";
    }
    $conn->close();
}
?>