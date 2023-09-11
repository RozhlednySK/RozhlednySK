<!DOCTYPE html>
<html>
<head>
                <meta charset="UTF-8">
                <link rel="stylesheet" href="css/main.css">
                <!-- <link rel="shortcut icon" href="favicon.ico" type="image/x-icon" /> -->
                <link href="favicon.png" rel="icon" type="image/png" />
</head>

<?
$i = 1;
$dbhost = 'sql2.webzdarma.cz';
$dbuser = 'ohrazenice.k8801';
$dbpass = 'mullerj1';
$dbname = 'ohrazenice.k8801';
$spojeni = mysql_connect($dbhost, $dbuser, $dbpass);

mysql_select_db($dbname, $spojeni);
mysql_query("SET NAMES 'utf-8'");

$ohio = mysql_query("select sum(ohrazenice) as ohio from t_score where datum > '2018-09-01'",$spojeni);
$doub = mysql_query("select sum(doubravice) as doub from t_score where datum > '2018-09-01'",$spojeni);
$vysledek = mysql_query("SELECT date_format(datum,'%e.%c.%Y') as datum1, vysledek, ohrazenice, doubravice FROM t_score where datum > '2018-09-01' order by datum DESC",$spojeni);
$ohio_score = mysql_query("select count(vysledek) as ohio from t_score where vysledek = 1 and datum > '2018-09-01'",$spojeni);
$doub_score = mysql_query("select count(vysledek) as doub from t_score where vysledek = 2 and datum > '2018-09-01'",$spojeni);
$remizy_score = mysql_query("select count(vysledek) as remizy from t_score where vysledek = 0 and datum > '2018-09-01'",$spojeni);
?>

<body>
	
<form action="insert_skore.php">
  <div class="message">Datum: <input class="date" type="date" name="Datum"></div>
  <div class="message">Skóre: <input class="number" type="number" name="Ohrazenice"> : <input class="number" type="number" name="Doubravice"></div>
  <input class="upload" type="submit" value="Nahrát">
</form>
	
	<br />
	<div class="message">Ohrazenice : Doubravice (zápasy)  </div>
	<div class="message">		
			<? 
				$zaznam = mysql_fetch_array($ohio_score);
				echo $zaznam["ohio"] . ' - ';
				$zaznam = mysql_fetch_array($remizy_score);
				echo $zaznam["remizy"] . ' - ';
				$zaznam = mysql_fetch_array($doub_score);
				echo $zaznam["doub"];
			?>
	</div>
	<br />
	<div class="message">Ohrazenice : Doubravice (góly)  </div>
	<div class="message">		
			<? 
				$zaznam = mysql_fetch_array($ohio);
				echo $zaznam["ohio"] . ' - ';
				$zaznam = mysql_fetch_array($doub);
				echo $zaznam["doub"];
			?>
	</div>
	<br />
	<table class="skore">
		<tr>
        <th> Datum </th><th> Výsledek </th><th class="skore_ohr"> Ohrazenice </th><th class="skore_dou"> Doubravice </th>
		</tr>
<? 
while ($zaznam = mysql_fetch_array($vysledek) ){
	if ($zaznam["vysledek"] == 0) {
    echo '<tr class="skore_rem">';
} elseif ($zaznam["vysledek"] == 1) {
	echo '<tr class="skore_ohr">';
} elseif ($zaznam["vysledek"] == 2) {
	echo '<tr class="skore_dou">';
} 
		echo '<td class="att">' . $zaznam["datum1"] .'</td><td class="att">' . $zaznam["vysledek"] . '</td><td class="att">' . $zaznam["ohrazenice"] . '</td><td class="att">'. $zaznam["doubravice"] . '</td></tr>';
};
MySQL_Close($spojeni);
?>
	</table>
</body>
</html> 