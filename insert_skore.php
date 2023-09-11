<?
	$dbhost = 'sql2.webzdarma.cz';
	$dbuser = 'ohrazenice.k8801';
	$dbpass = 'mullerj1';
	$dbname = 'ohrazenice.k8801';
	$conn = mysql_connect($dbhost, $dbuser, $dbpass);
	mysql_select_db($dbname);	
	// $sql = "INSERT INTO t_score (id, id_date, datum, vysledek, ohrazenice, doubravice) VALUES ('30', '', '2019-04-19', '1', '19', '10')";
	//$vysledek = mysql_query( $sql, $conn );
	
	$Datum = $_GET['Datum'];
	$Ohrazenice = $_GET['Ohrazenice'];
	$Doubravice = $_GET['Doubravice'];
	
	$sql1 = "select count(id) as pocet from t_score";
	$vysledek1 = mysql_query( $sql1, $conn );
	$zaznam = mysql_fetch_array($vysledek1);
	
	
	$pocet = $zaznam["pocet"] + 1 ; // počet záznamů - id
	
	// nastavení hodnoty výsledek podle skóre
	if ($Ohrazenice > $Doubravice) { 
    $Stav = 1;
} elseif ($Ohrazenice < $Doubravice){
    $Stav = 2;
} else {
	$Stav = 0;
}
	
	$sql = "INSERT INTO t_score (id, datum, vysledek, ohrazenice, doubravice) VALUES (" . $pocet . ", '" . $Datum . "'," . $Stav . ", " . $Ohrazenice . ", " . $Doubravice . ")";
	$vysledek = mysql_query( $sql, $conn );
	
MySQL_Close($conn);
Header("Location:http://ohrazenice.kvalitne.cz/skoreInsert.php");
?>

 <html>
<head>
                <meta charset="UTF-8">
                <link rel="stylesheet" href="css/main.css">
                <!-- <link rel="shortcut icon" href="favicon.ico" type="image/x-icon" /> -->
                <link href="favicon.png" rel="icon" type="image/png" />
</head>
<body>
<?
echo "pocet: " . $pocet;
echo "<br />";
echo "Datum: " . $Datum;
echo "<br />";
echo "Stav: " . $Stav;
echo "<br />";
echo "Ohrazenice: " . $Ohrazenice;
echo "<br />";
echo "Doubravice: " . $Doubravice;
echo "<br />";

?>
</body>
</html>
