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

$ohio = mysql_query("select count(vysledek) as ohio from t_score where vysledek = 1 and datum > '2023-09-01'",$spojeni);
$doub = mysql_query("select count(vysledek) as doub from t_score where vysledek = 2 and datum > '2023-09-01'",$spojeni);
$remizy = mysql_query("select count(vysledek) as remizy from t_score where vysledek = 0 and datum > '2023-09-01'",$spojeni);

?>
	
<body>
	<h1>Futsal - docházka</h1>
	<!-- <h2>Sobota 13.7. rozlučka se sezónou na kurtech v Doubravicích!!! </h2> -->
	<div class="message">Pokud nenajdeš svoje jméno na seznamu a víš že dorazíš, dej pro daný datum ANO u kteréhokoliv Návštěvníka, kde je otazník.</div>
	<br />
	<div class="message">Cena za podzim 2023: <b>550Kč</b>, jednotlivé vstupné standardně <b>50Kč</b><div>
	<br />
	<br />
	<table class="att1">
		<tr class="att1">
			<td class="att1">Ohrazenice : Doubravice [<a href="skore.php?sezona=0" onclick="">zápasy</a>]</td> 
		</tr>
		<tr class="att1">
			<td class="att1">
			<? 
				$zaznam = mysql_fetch_array($ohio);
				echo $zaznam["ohio"] . ' - ';
				$zaznam = mysql_fetch_array($remizy);
				echo $zaznam["remizy"] . ' - ';
				$zaznam = mysql_fetch_array($doub);
				echo $zaznam["doub"];
			?>
			</td>
		</tr>
	</table>
    <br />
	<br />
	<table class="att">
		<tr class="att">
        <td class="att">datum</td>
<? 

$vysledek = mysql_query("SELECT date_format(date,'%e.%c.') as datum, holiday, comment FROM t_date where date >= CURDATE() order by date",$spojeni);
while ($zaznam = mysql_fetch_array($vysledek) ){
	if ($zaznam["holiday"] == 0){
		echo '<td class="att">' . $zaznam["datum"] . '</td>' . "\n";
	}
	else {
		echo '<td style="color:red" title="' . $zaznam["comment"] .'">' . $zaznam["datum"] . '</td>' . "\n";
		//echo '<td class="att_red" title="' . $zaznam["comment"] .'">' . $zaznam["datum"] . '</td>' . "\n";
	};
//    echo $zaznam["holiday"] . " ";
}
echo '</tr>'. "\n";
echo '<tr class="att">';
echo '<td class="att">počet</td>';
$vysledek = mysql_query("SELECT count(a.id) as pocet, b.date as datum from t_player_date a right join t_date b on a.id_date = b.id and b.date >= CURDATE() and a.c_att = 1 group by b.id order by b.id",$spojeni);
while ($zaznam = mysql_fetch_array($vysledek) ):
//	echo $zaznam["datum"] . "---" . date("Y-m-d") . "///";
    if ($zaznam["datum"] >= date("Y-m-d")) {
	echo '<td class="att">' . $zaznam["pocet"] . "</td>" . "\n";
	}
//    echo $zaznam["holiday"] . " ";
endwhile;
echo '</tr>' . "\n"; 
 
$vysledek = mysql_query("SELECT id, surname, name, comment FROM t_player order by id",$spojeni);
while ($zaznam = mysql_fetch_array($vysledek) ):
                echo '<tr class="att">';
                echo '<td class="att">';
                echo $zaznam["name"] . " ";
                echo $zaznam["surname"];
                echo '</td>' . "\n";
                //echo $zaznam["comment"] . "<BR />";
                $vysledek1 = mysql_query("SELECT a.id, a.id_date, a.c_att, a.comment FROM t_player_date a, t_date b where a.id_date = b.id and  id_player=" . $zaznam["id"] . " and b.date >= CURDATE() order by id_date", $spojeni);
                while ($zaznam1 = mysql_fetch_array($vysledek1) ):
                               echo '<td class="att">';
                               echo '<div id="image-dropdown' . $i . '" style = "display:none">' . "\n";
                               echo '<a href="#" onclick="closePop(' . $i . ',1,' . $zaznam1["id"] . ')"><img src="grafika/ano.png" alt="ANO" /></a>'. "\n";
                               echo '<a href="#" onclick="closePop(' . $i . ',2,' . $zaznam1["id"] . ')"><img src="grafika/ne.png" alt="NE" /></a>'. "\n";
                               echo '<a href="#" onclick="closePop(' . $i . ',0,' . $zaznam1["id"] . ')"><img src="grafika/mozna.png" alt="?" /></a>'. "\n";
                                echo '</div>';
                                echo '<div id="text-dropdown' . $i . '" style = "display:block">'. "\n";
                               echo  '<a id="odkaz' . $i . '" href="#" onclick="openPop(' . $i . ')">' . "\n";
                                               if ($zaznam1["c_att"]==0){
                                                echo '<img id="obrazek' . $i . '" alt="Click to choose" src="grafika/mozna.png" />';
                                                }
                                                elseif ($zaznam1["c_att"]==1){
                                                echo '<img id="obrazek' . $i . '" alt="Click to choose" src="grafika/ano.png" />';
                                                }
                                               else if ($zaznam1["c_att"]==2){
											   echo '<img id="obrazek' . $i . '" alt="Click to choose" src="grafika/ne.png" />';
                                               };
                               echo '</a>';
                                echo '</div>';
                               //echo $zaznam1["c_att"];
                               //echo $zaznam["comment"] . " ";
                               echo '</td>' . "\n";
                        $i++;
                endwhile;
                echo '</tr>' . "\n";
endwhile;
 
echo '</table>'. "\n";
MySQL_Close($spojeni);
?>

<br />
<div class="message">Počet přístupů:<b><? require "pocitadlo.php"?></b></div>

<script type="text/javascript">
function openPop(id){
	document.getElementById("image-dropdown" + id).style.display="block";
	document.getElementById("text-dropdown" + id).style.display="none";
}
function closePop(id, a, idt){
	document.getElementById("image-dropdown" + id).style.display="none";
    document.getElementById("text-dropdown" + id).style.display="block";
	if (a==1){
		document.getElementById("obrazek" + id).src = "grafika/ano.png";
    }
	else if (a==2){
			document.getElementById("obrazek" + id).src = "grafika/ne.png";
    }
	else {
			document.getElementById("obrazek" + id).src = "grafika/mozna.png";
	}
	
	if (window.XMLHttpRequest) {
            // code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
    } else {
            // code for IE6, IE5
        xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
    }	
		//xmlhttp.onreadystatechange = function() {
        //    if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
        //        document.getElementById("txtHint").innerHTML = xmlhttp.responseText;
        //    }
       // };
     xmlhttp.open("POST","insert.php",true);
	 xmlhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
     xmlhttp.send("id=" + idt + "&att=" + a);
}
</script>
<br />
<br />
</body>
</html> 