<title>Home</title>
<?php
// Get the 4 most recently added products
// Database connection parameters
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "shoppingcart";

try {
    // Create a PDO instance representing a connection to a database
    $pdo = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);

    // Set the PDO error mode to exception
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

$stmt = $pdo->prepare('SELECT * FROM products ORDER BY date_added DESC LIMIT 4');
$stmt->execute();
$recently_added_products = $stmt->fetchAll(PDO::FETCH_ASSOC);

    
} catch(PDOException $e) {
    // If an error occurs, output the error message
    echo "Error: " . $e->getMessage();
}


?>


<div class="featured">
    <h2>Online Phone Store</h2>
    <p>Think,Get,Buy</p>
</div>
<div class="recentlyadded content-wrapper">
    <h2>Recently Added Products</h2>
    <div class="products">
        <?php foreach ($recently_added_products as $product): ?>
        <a href="index.php?page=product&id=<?=$product['id']?>" class="product">
            <img src="imgs/<?=$product['img']?>" width="200" height="200" alt="<?=$product['name']?>">
            <span class="name"><?=$product['name']?></span>
            <span class="price">
                <?=$product['price']?>
            </span>
        </a>
        <?php endforeach; ?>
    </div>
</div>

<?=template_footer()?>


