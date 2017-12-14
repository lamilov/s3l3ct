<?php

require_once("config.inc");

$q = mysql_query("SELECT * FROM `forum_forum`.`core_hooks_files`",$link1) or die("Error Connecting...: ".mysql_error());
while ($r = mysql_fetch_array($q)) {
echo "<td width=20%>".$r['hook_file_stored']."</td><br>";
}
?>

