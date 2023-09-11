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

switch ($_GET['sezona']) { 
			case 0:
				$ohio = mysql_query("select sum(ohrazenice) as ohio from t_score where datum > '2023-09-01'",$spojeni);
				$doub = mysql_query("select sum(doubravice) as doub from t_score where datum > '2023-09-01'",$spojeni);
				$vysledek = mysql_query("SELECT date_format(datum,'%e.%c.%Y') as datum1, vysledek, ohrazenice, doubravice FROM t_score where datum > '2023-09-01' order by datum DESC",$spojeni);
				$ohio_score = mysql_query("select count(vysledek) as ohio from t_score where vysledek = 1 and datum > '2023-09-01'",$spojeni);
				$doub_score = mysql_query("select count(vysledek) as doub from t_score where vysledek = 2 and datum > '2023-09-01'",$spojeni);
				$remizy_score = mysql_query("select count(vysledek) as remizy from t_score where vysledek = 0 and datum > '2023-09-01'",$spojeni);
				break;
			case 1:
				$ohio = mysql_query("select sum(ohrazenice) as ohio from t_score where datum > '2022-09-01' and datum < '2023-09-01'",$spojeni);
				$doub = mysql_query("select sum(doubravice) as doub from t_score where datum > '2022-09-01' and datum < '2023-09-01'",$spojeni);
				$vysledek = mysql_query("SELECT date_format(datum,'%e.%c.%Y') as datum1, vysledek, ohrazenice, doubravice FROM t_score where datum > '2022-09-01' and datum < '2023-09-01' order by datum DESC",$spojeni);
				$ohio_score = mysql_query("select count(vysledek) as ohio from t_score where vysledek = 1 and datum > '2022-09-01' and datum < '2023-09-01'",$spojeni);
				$doub_score = mysql_query("select count(vysledek) as doub from t_score where vysledek = 2 and datum > '2022-09-01' and datum < '2023-09-01'",$spojeni);
				$remizy_score = mysql_query("select count(vysledek) as remizy from t_score where vysledek = 0 and datum > '2022-09-01' and datum < '2023-09-01'",$spojeni);
				break;
			case 2:
				$ohio = mysql_query("select sum(ohrazenice) as ohio from t_score where datum > '2021-09-01' and datum < '2022-09-01'",$spojeni);
				$doub = mysql_query("select sum(doubravice) as doub from t_score where datum > '2021-09-01' and datum < '2022-09-01'",$spojeni);
				$vysledek = mysql_query("SELECT date_format(datum,'%e.%c.%Y') as datum1, vysledek, ohrazenice, doubravice FROM t_score where datum > '2021-09-01' and datum < '2022-09-01' order by datum DESC",$spojeni);
				$ohio_score = mysql_query("select count(vysledek) as ohio from t_score where vysledek = 1 and datum > '2021-09-01' and datum < '2022-09-01'",$spojeni);
				$doub_score = mysql_query("select count(vysledek) as doub from t_score where vysledek = 2 and datum > '2021-09-01' and datum < '2022-09-01'",$spojeni);
				$remizy_score = mysql_query("select count(vysledek) as remizy from t_score where vysledek = 0 and datum > '2021-09-01' and datum < '2022-09-01'",$spojeni);
				break;
			case 3:	
				$ohio = mysql_query("select sum(ohrazenice) as ohio from t_score where datum > '2020-09-01' and datum < '2021-09-01'",$spojeni);
				$doub = mysql_query("select sum(doubravice) as doub from t_score where datum > '2020-09-01' and datum < '2021-09-01'",$spojeni);
				$vysledek = mysql_query("SELECT date_format(datum,'%e.%c.%Y') as datum1, vysledek, ohrazenice, doubravice FROM t_score where datum > '2020-09-01' and datum < '2021-09-01' order by datum DESC",$spojeni);
				$ohio_score = mysql_query("select count(vysledek) as ohio from t_score where vysledek = 1 and datum > '2020-09-01' and datum < '2021-09-01'",$spojeni);
				$doub_score = mysql_query("select count(vysledek) as doub from t_score where vysledek = 2 and datum > '2020-09-01' and datum < '2021-09-01'",$spojeni);
				$remizy_score = mysql_query("select count(vysledek) as remizy from t_score where vysledek = 0 and datum > '2020-09-01' and datum < '2021-09-01'",$spojeni);
				break;
			case 4:	
				$ohio = mysql_query("select sum(ohrazenice) as ohio from t_score where datum > '2019-09-01' and datum < '2020-09-01'",$spojeni);
				$doub = mysql_query("select sum(doubravice) as doub from t_score where datum > '2019-09-01' and datum < '2020-09-01'",$spojeni);
				$vysledek = mysql_query("SELECT date_format(datum,'%e.%c.%Y') as datum1, vysledek, ohrazenice, doubravice FROM t_score where datum > '2019-09-01' and datum < '2020-09-01' order by datum DESC",$spojeni);
				$ohio_score = mysql_query("select count(vysledek) as ohio from t_score where vysledek = 1 and datum > '2019-09-01' and datum < '2020-09-01'",$spojeni);
				$doub_score = mysql_query("select count(vysledek) as doub from t_score where vysledek = 2 and datum > '2019-09-01' and datum < '2020-09-01'",$spojeni);
				$remizy_score = mysql_query("select count(vysledek) as remizy from t_score where vysledek = 0 and datum > '2019-09-01' and datum < '2020-09-01'",$spojeni);
				break;
			case 5:	
				$ohio = mysql_query("select sum(ohrazenice) as ohio from t_score where datum > '2018-09-01' and datum < '2019-09-01'",$spojeni);
				$doub = mysql_query("select sum(doubravice) as doub from t_score where datum > '2018-09-01' and datum < '2019-09-01'",$spojeni);
				$vysledek = mysql_query("SELECT date_format(datum,'%e.%c.%Y') as datum1, vysledek, ohrazenice, doubravice FROM t_score where datum > '2018-09-01' and datum < '2019-09-01' order by datum DESC",$spojeni);
				$ohio_score = mysql_query("select count(vysledek) as ohio from t_score where vysledek = 1 and datum > '2018-09-01' and datum < '2019-09-01'",$spojeni);
				$doub_score = mysql_query("select count(vysledek) as doub from t_score where vysledek = 2 and datum > '2018-09-01' and datum < '2019-09-01'",$spojeni);
				$remizy_score = mysql_query("select count(vysledek) as remizy from t_score where vysledek = 0 and datum > '2018-09-01' and datum < '2019-09-01'",$spojeni);
				break;
			case 99:	
				$ohio = mysql_query("select sum(ohrazenice) as ohio from t_score",$spojeni);
				$doub = mysql_query("select sum(doubravice) as doub from t_score",$spojeni);
				$vysledek = mysql_query("SELECT date_format(datum,'%e.%c.%Y') as datum1, vysledek, ohrazenice, doubravice FROM t_score order by datum DESC",$spojeni);
				$ohio_score = mysql_query("select count(vysledek) as ohio from t_score where vysledek = 1",$spojeni);
				$doub_score = mysql_query("select count(vysledek) as doub from t_score where vysledek = 2",$spojeni);
				$remizy_score = mysql_query("select count(vysledek) as remizy from t_score where vysledek = 0",$spojeni);
				break;
		}

?>

<body>
	<h1>
		Skóre - 
		<? switch ($_GET['sezona']) { 
			case 0:
				echo '2023/2024';
				break;
			case 1:
				echo '2022/2023';
				break;
			case 2:	
				echo '2021/2022';
				break;
			case 3:	
				echo '2020/2021';
				break;
			case 4:	
				echo '2019/2020';
				break;
			case 5:	
				echo '2018/2019';
				break;
			case 99:	
				echo 'Celkem - od září 2018';
				break;
		}
		?>
	</h1>
	<div class="message">
		Předchozí sezóny:
		<? switch  ($_GET['sezona']) {
			case 0:
				echo ' [<a href="skore.php?sezona=99" onclick="">Vše</a>] ';
				echo ' [<a href="skore.php?sezona=0" onclick="">2023/2024</a>] ';
				echo ' [<a href="skore.php?sezona=1" onclick="">2022/2023</a>] ';
				echo ' [<a href="skore.php?sezona=2" onclick="">2021/2022</a>] ';
				echo ' [<a href="skore.php?sezona=3" onclick="">2020/2021</a>] ';
				echo ' [<a href="skore.php?sezona=4" onclick="">2019/2020</a>] ';
				echo ' [<a href="skore.php?sezona=5" onclick="">2018/2019</a>] ';
				break;
			case 1:
				echo ' [<a href="skore.php?sezona=99" onclick="">Vše</a>] ';
				echo ' [<a href="skore.php?sezona=0" onclick="">2023/2024</a>] ';
				echo ' [<a href="skore.php?sezona=1" onclick="">2022/2023</a>] ';
				echo ' [<a href="skore.php?sezona=2" onclick="">2021/2022</a>] ';
				echo ' [<a href="skore.php?sezona=3" onclick="">2020/2021</a>] ';
				echo ' [<a href="skore.php?sezona=4" onclick="">2019/2020</a>] ';
				echo ' [<a href="skore.php?sezona=5" onclick="">2018/2019</a>] ';
				break;
			case 2:
				echo ' [<a href="skore.php?sezona=99" onclick="">Vše</a>] ';
				echo ' [<a href="skore.php?sezona=0" onclick="">2023/2024</a>] ';
				echo ' [<a href="skore.php?sezona=1" onclick="">2022/2023</a>] ';
				echo ' [<a href="skore.php?sezona=2" onclick="">2021/2022</a>] ';
				echo ' [<a href="skore.php?sezona=3" onclick="">2020/2021</a>] ';
				echo ' [<a href="skore.php?sezona=4" onclick="">2019/2020</a>] ';
				echo ' [<a href="skore.php?sezona=5" onclick="">2018/2019</a>] ';
				break;
			case 3:	
				echo ' [<a href="skore.php?sezona=99" onclick="">Vše</a>] ';
				echo ' [<a href="skore.php?sezona=0" onclick="">2023/2024</a>] ';
				echo ' [<a href="skore.php?sezona=1" onclick="">2022/2023</a>] ';
				echo ' [<a href="skore.php?sezona=2" onclick="">2021/2022</a>] ';
				echo ' [<a href="skore.php?sezona=3" onclick="">2020/2021</a>] ';
				echo ' [<a href="skore.php?sezona=4" onclick="">2019/2020</a>] ';
				echo ' [<a href="skore.php?sezona=5" onclick="">2018/2019</a>] ';
				break;
			case 4:	
				echo ' [<a href="skore.php?sezona=99" onclick="">Vše</a>] ';
				echo ' [<a href="skore.php?sezona=0" onclick="">2023/2024</a>] ';
				echo ' [<a href="skore.php?sezona=1" onclick="">2022/2023</a>] ';
				echo ' [<a href="skore.php?sezona=2" onclick="">2021/2022</a>] ';
				echo ' [<a href="skore.php?sezona=3" onclick="">2020/2021</a>] ';
				echo ' [<a href="skore.php?sezona=4" onclick="">2019/2020</a>] ';
				echo ' [<a href="skore.php?sezona=5" onclick="">2018/2019</a>] ';
				break;
			case 5:	
				echo ' [<a href="skore.php?sezona=99" onclick="">Vše</a>] ';
				echo ' [<a href="skore.php?sezona=0" onclick="">2023/2024</a>] ';
				echo ' [<a href="skore.php?sezona=1" onclick="">2022/2023</a>] ';
				echo ' [<a href="skore.php?sezona=2" onclick="">2021/2022</a>] ';
				echo ' [<a href="skore.php?sezona=3" onclick="">2020/2021</a>] ';
				echo ' [<a href="skore.php?sezona=4" onclick="">2019/2020</a>] ';
				echo ' [<a href="skore.php?sezona=5" onclick="">2018/2019</a>] ';
				break;
			case 99:	
				echo ' [<a href="skore.php?sezona=99" onclick="">Vše</a>] ';
				echo ' [<a href="skore.php?sezona=0" onclick="">2023/2024</a>] ';
				echo ' [<a href="skore.php?sezona=1" onclick="">2022/2023</a>] ';
				echo ' [<a href="skore.php?sezona=2" onclick="">2021/2022</a>] ';
				echo ' [<a href="skore.php?sezona=3" onclick="">2020/2021</a>] ';
				echo ' [<a href="skore.php?sezona=4" onclick="">2019/2020</a>] ';
				echo ' [<a href="skore.php?sezona=5" onclick="">2018/2019</a>] ';
				break;
		}
		?>
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
<!--		<br />
	<div class="message">22.11. Mára si moc přál, abych napsal, že hrál za Ohrazenice :)</div>
	<div class="message">1.11. v 17:30 vedly Ohrazenice 12:11... Bohužel jsme ještě 10 minut pokračovali...</div>
	<div class="message">4.10. Doubravice hráli ve 3! Lukáš, Pavel, Mára vs Honza, Kuba, Vitalij, Ráďa</div>
	<div class="message">27.9. jsem hrál za Ohrazenice! Lukáš</div>
	<div class="message">13.9. jsem hrál za Doubravice! Honza</div>
-->
</body>
</html> 