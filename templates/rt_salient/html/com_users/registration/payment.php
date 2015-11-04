<?php
defined('_JEXEC') or die;
$package = JRequest::getVar("package");
print_r($package);exit;
if($package == 1){
	$amount = 50;
}
if($package == 2){
	$amount = 250;
}
if($package == 3){
	$amount = 500;
}
?>
<form action="https://ssl.ditonlinebetalingssystem.dk/integration/ewindow/Default.aspx" method="post">
    <input name="merchantnumber" value="8021238">
    <input name="amount" value="10495">
    <input name="currency" value="DKK">
    <input name="windowstate" value="3">
    <input type="submit" value="Go to payment">
</form>