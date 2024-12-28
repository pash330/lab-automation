<?php
include 'includes/db.php';

if (isset($_POST['submit_product'])) {
    $name = mysqli_real_escape_string($conn, $_POST['product_name']);
    $description = mysqli_real_escape_string($conn, $_POST['product_description']);
    $type = mysqli_real_escape_string($conn, $_POST['product_type']);

    $sql = "INSERT INTO products (name, description, type) VALUES ('$name', '$description', '$type')";
    if (mysqli_query($conn, $sql)) {
        header("Location: products.php");
    } else {
        echo "Error: " . mysqli_error($conn);
    }
}
?>
