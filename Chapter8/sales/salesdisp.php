<?php
	$mysqli = new mysqli('localhost', 'linux1', 'linux1', 'linux1');
	if ($mysqli->connect_error) {
		die("Couldn't Connect to MySQL Database.\nError (" . $mysqli->connect_errno . "): " . $mysqli->connect_error);
	}
	$sales = $mysqli->query("SELECT * FROM sales");
?>
<html>
	<head>
		<title>Sales Display App</title>
		<link href='http://fonts.googleapis.com/css?family=Inconsolata' rel='stylesheet' type='text/css'>
		<link rel="stylesheet" type="text/css" href="styles.css" />
	</head>
	<body>
		<div id="container">
			<h2>Sales Add App</h2>
			<table class="mt">
				<tbody>
					<tr>
						<td>
							<table>
								<thead>
									<tr>
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
											print "<td>" . $salesrow["custnumber"] . " - " . $namerow["firstname"] . " " . $namerow["lastname"] . "</td>";
											print "<td class='num'>" . $salesrow["partnumber"] . "</td>";
											print "<td class='num'>" . $salesrow["price"] . "</td>";
											print "<td class='num'>" . $salesrow["quantity"] . "</td>";
											print "</tr>";
										}
										$mysqli->close();
									?>
								</tbody>
							</table>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	</body>
</html>
