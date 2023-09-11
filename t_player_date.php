<?
   $dbhost = 'sql2.webzdarma.cz';
   $dbuser = 'ohrazenice.k8801';
   $dbpass = 'mullerj1';
   $dbname = 'ohrazenice.k8801';
   $conn = mysql_connect($dbhost, $dbuser, $dbpass);
  
   if(! $conn ) {
      die('Could not connect: ' . mysql_error());
   }
   mysql_query("SET NAMES 'utf-8'");  
   mysql_select_db($dbname);
  
   $z = 1;
   for($i=1;$i<=23;$i++){ //doplnit i podle max id v t_player
                   for($j =1;$j<=17;$j++){ //doplnit j podle max id v t_date
                               $sql = 'INSERT INTO t_player_date (id, id_player, id_date, c_att) VALUES ('. $z .', '. $i .', '. $j . ', 0)';
                               $retval = mysql_query( $sql, $conn );
  
                               if(! $retval ) {
                                               die('Could not enter data: ' . mysql_error());
                               }
                               echo "Hrac: " . $i . " - Datum: ". $j . " - OK" . "<br />";
                               $z++;
                   }
   }
   mysql_close($conn);
  ?>