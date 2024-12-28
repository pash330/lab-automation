<?php include 'includes/header.php'; ?>
<main>
    <h2>Add New Product</h2>
    <form action="insert_record.php" method="POST">
        <label for="product_name">Product Name:</label>
        <input type="text" id="product_name" name="product_name" required>

        <label for="product_description">Product Description:</label>
        <textarea id="product_description" name="product_description" required></textarea>

        <label for="product_type">Product Type:</label>
        <input type="text" id="product_type" name="product_type" required>

        <input type="submit" name="submit_product" value="Add Product">
    </form>
</main>
</body>
</html>
