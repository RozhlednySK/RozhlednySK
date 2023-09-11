<!DOCTYPE html>
<html>
<head>
                <meta charset="UTF-8">
                <link rel="stylesheet" href="css/main.css">
                <!-- <link rel="shortcut icon" href="favicon.ico" type="image/x-icon" /> -->
                <link href="favicon.png" rel="icon" type="image/png" />
</head>
<body>
	<h1>Futsal - docházka</h1>
	<div class="message">Pokud nenajdeš svoje jméno na seznamu a víš že dorazíš, dej pro daný datum ANO u kteréhokoliv Návštěvníka, kde je otazník.</div>
	<br />
	<div class="message">Cena za podzim 2017: <b>500Kč</b>, jednotlivé vstupné standardně <b>50Kč</b><div>
	<br />
    <table class="att">
		<tr class="att">
        <td class="att">datum</td>
<?
$i = 1;
$dbhost = 'sql2.webzdarma.cz';
$dbuser = 'ohrazenice.k8801';
$dbpass = 'mullerj1';
$dbname = 'ohrazenice.k8801';
$spojeni = mysql_connect($dbhost, $dbuser, $dbpass);
 
mysql_select_db($dbname, $spojeni);
mysql_query("SET NAMES 'utf-8'");
$vysledek = mysql_query("SELECT date_format(date,'%e.%c.') as datum, holiday FROM t_date where date >= CURDATE() order by date",$spojeni);
while ($zaznam = mysql_fetch_array($vysledek) ):
    echo '<td class="att">' . $zaznam["datum"] . '</td>' . "\n";
//    echo $zaznam["holiday"] . " ";
endwhile;
echo '</tr>'. "\n";
echo '<tr class="att">';
echo '<td class="att">počet</td>';
$vysledek = mysql_query("SELECT count(a.id) as pocet, a.id_date from t_player_date a, t_date b where a.id_date = b.id and a.c_att = 1 and b.date >= CURDATE() group by id_date order by id_date",$spojeni);
while ($zaznam = mysql_fetch_array($vysledek) ):
    echo '<td class="att">' . $zaznam["pocet"] . "</td>" . "\n";
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