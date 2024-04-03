<?php
 		// header("Content-Type: application/json");

    //  $response = '{
    //      "ResultCode": 0, 
    //      "ResultDesc": "Confirmation Received Successfully"
    //  }';
 
    //  // DATA
    //  $mpesaResponse = file_get_contents('php://input');
 
    //  // log the response
    //  $logFile = "M_PESAConfirmationResponse.txt";
 
    //  // write to file
    //  $log = fopen($logFile, "a");
 
    //  fwrite($log, $mpesaResponse);
    //  fclose($log);
 
    //  echo $response;

    header("Content-Type: application/json");

    $response = '{
        "ResultCode": 0, 
        "ResultDesc": "Confirmation Received Successfully"
    }';
    
    // DATA
    $mpesaResponse = file_get_contents('php://input');
    
    // Database connection parameters
    $servername = "localhost";
    $username = "bwhjxvch_mpesa";
    $password = "9yi32dY5IPp+N[";
    $dbname = "bwhjxvch_mpesa";
    
    try {
        // Create a PDO instance representing a connection to a database
        $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    
        // Set the PDO error mode to exception
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    
        // Prepare SQL statement to insert data into the database
        $stmt = $conn->prepare("INSERT INTO mpesa_responses (response_data) VALUES (:response_data)");
    
        // Bind parameters
        $stmt->bindParam(':response_data', $mpesaResponse);
    
        // Execute the SQL statement
        $stmt->execute();
    
        // Close the database connection
        $conn = null;
    
        echo $response;
    } catch(PDOException $e) {
        // If an error occurs, output the error message
        echo "Error: " . $e->getMessage();
    }
    