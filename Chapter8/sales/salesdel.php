<?php
	$mysqli = new mysqli('localhost', 'linux1', 'linux1', 'linux1');
	if ($mysqli->connect_error) {
		die("Couldn't Connect to MySQL Database.\nError (" . $mysqli->connect_errno . "): " . $mysqli->connect_error);
	}
	if ($_POST["action"] === "delete") {
		$sql = "DELETE FROM sales WHERE";
		for ($i=0; $i < count($_POST['checkboxes']); $i++) {
			$sql = $sql . " salenumber=" . $_POST['checkboxes'][$i] . " or";
		}
		$sql = rtrim($sql, "or");
		if ($mysqli->query($sql) === FALSE){
			printf("Error: Unable to delete rows" . $mysqli->error);
    }
  }
	$sales = $mysqli->query("SELECT * FROM sales");
?>
<html>
	<head>
		<title>Sales Delete App</title>
    <link rel="stylesheet" type="text/css" href="styles.css" />
    <link href='http://fonts.googleapis.com/css?family=Inconsolata' rel='stylesheet' type='text/css'>
	</head>
	<body>
    <div id="container">
			<h2>Sales Delete App</h2>
			<table class="mt">
				<tbody>
					<tr>
						<td>
              <form action="salesdel.php" method="POST">
		          	<input type="hidden" name="action" value="delete" />
	          		<table>
                  <thead>
                    <tr>
                      <th>Delete</th>
                      <th>Customer</th>
                      <th class="num">Part Number</th>
                      <th class="num">Price</th>
                      <th class="num">Quantitiy</th>
                    </tr>
                  </thead>
                  <tbody>
                    <?php
                      while ($salesrow = $sales->fetch_assoc()) {
                        $name = $mysqli->query("SELECT firstname, lastname FROM custnames WHERE custnumber=" . $salesrow["custnumber"]);
                        $namerow = $name->fetch_assoc();
                        print "<tr>";
                        print "<td><input type='checkbox' name='checkboxes' value='" . $salesrow["salenumber"] . "' /></td>";
                        print "<td>" . $salesrow["custnumber"] . " - " . $namerow["firstname"] . " " . $namerow["lastname"] . "</td>";
                        print "<td class='num'>" . $salesrow["partnumber"] . "</td>";
                        print "<td class='num'>" . $salesrow["price"] . "</td>";
                        print "<td class='num'>" . $salesrow["quantity"] . "</td>";
                        print "</tr>";
                      }
                      $mysqli->close();
                    ?>
                    <tr>
                      <td><input type="submit" value="Delete" class="delete"></td>
                    </tr>
                  </tbody>
	          		</table>
	          	</form>
            </td>
					</tr>
				</tbody>
			</table>
    </div>
	</body>
</html>
