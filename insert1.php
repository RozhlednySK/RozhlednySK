<?
//$id = NL2BR(HTMLSpecialChars($HTTP_POST_VARS['id']));
$id = $_GET['id'];
$att = $_GET['att'];

/*if (($nick == "")||($message == ""))
  {
   Header("Location:http://rumbler.xf.cz/guestbook/guestbook.php?error=1");
   exit('<span class="nick"> Zpr�va nebyla vlo�ena, mus�t vyplnit nick i zpr�vu!');
  }*/ 

	$dbhost = 'sql2.webzdarma.cz';
	$dbuser = 'ohrazenice.k8801';
	$dbpass = 'mullerj1';
	$dbname = 'ohrazenice.k8801';
	$conn = mysql_connect($dbhost, $dbuser, $dbpass);  
	$sql = 'UPDATE t_player_date set c_att=' . $att . ' where id='. $id;
	
	mysql_select_db($dbname);	
	$vysledek = mysql_query( $sql, $conn );
	echo $vysledek;
MySQL_Close($conn);
//Header("Location:http://rumbler.xf.cz/guestbook/guestbook.php");
?>
