<?
function pristup()
{
	
                $line = date("Y-m-d H:i:s") . " - " . getenv('REMOTE_ADDR');              
                file_put_contents("visitors.log", $line . PHP_EOL, FILE_APPEND);

		$fp = FOpen("pocitadlo.dat", "r+");
		if(!$fp) return;
		$pristupu = fGetS($fp,10)+1 ;
		Rewind($fp);
		FPuts($fp, $pristupu);
		FClose($fp);
		echo $pristupu;
}
pristup();
?>