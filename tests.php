<?php 
include 'includes/header.php'; 
include 'includes/db.php';

$result = mysqli_query($conn, "SELECT * FROM tests");
?>
<main>
    <h2>All Tests</h2>
    <table>
        <thead>
            <tr>
                <th>Test ID</th>
                <th>Product ID</th>
                <th>Type</th>
                <th>Performed</th>
                <th>Result</th>
                <th>Tester</th>
                <th>Remarks</th>
            </tr>
        </thead>
        <tbody>
            <?php while ($row = mysqli_fetch_assoc($result)): ?>
            <tr>
                <td><?= $row['id']; ?></td>
                <td><?= $row['product_id']; ?></td>
                <td><?= $row['type']; ?></td>
                <td><?= $row['performed']; ?></td>
                <td><?= $row['result']; ?></td>
                <td><?= $row['tester']; ?></td>
                <td><?= $row['remarks']; ?></td>
            </tr>
            <?php endwhile; ?>
        </tbody>
    </table>
</main>
</body>
</html>
