<?php
	$mysqli = new mysqli('localhost', 'linux1', 'linux1', 'linux1');
	if ($mysqli->connect_error) {
		die("Couldn't Connect to MySQL Database.\nError (" . $mysqli->connect_errno . "): " . $mysqli->connect_error);
	}
  if ($_POST["action"] === "insert") {
    $sql = "INSERT INTO sales (custnumber, partnumber, price, quantity) VALUES (";
    $sql = $sql . "'" . $_POST["custnumber"] . "',";
    $sql = $sql . "'" . $_POST["partnumber"] . "',";
    $sql = $sql . "'" . $_POST["price"] . "',";
    $sql = $sql . "'" . $_POST["quantity"] . "'";
    $sql = $sql . ");";
    if ($mysqli->query($sql) === FALSE) {
      printf("Error: Unable to insert data into table. (" . $mysqli->error . ")");
    }
  }
?>
<html>
  <head>
    <title>Sales Add App</title>
    <link rel="stylesheet" type="text/css" href="styles.css" />
    <link href='http://fonts.googleapis.com/css?family=Inconsolata' rel='stylesheet' type='text/css'>
  </head>
  <body>
    <div id="container">
			<h2>Sales Add App</h2>
			<table class="mt">
				<tbody>
					<tr>
						<td>
              <form action="salesadd.php" method="POST">
                <input type="hidden" name="action" value="insert" />
                <table>
                  <tbody>
                    <tr>
                      <td>
                        <p>Customer Number:</p>
                      </td>
                      <td>
                        <input name="custnumber" />
                      </td>
                    </tr>
                    <tr>
                      <td>
                        <p>Part Number:</p>
                      </td>
                      <td>
                        <input name="partnumber" />
                      </td>
                    </tr>
                    <tr>
                      <td>
                        <p>Price:</p>
                      </td>
                      <td>
                        <input name="price" />
                      </td>
                    </tr>
                    <tr>
                      <td>
                        <p>Quantity:</p>
                      </td>
                      <td>
                        <input name="quantity" />
                      </td>
                    </tr>
                    <tr>
                      <td>
                        <input type="submit" name="Add">
                      </td>
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
