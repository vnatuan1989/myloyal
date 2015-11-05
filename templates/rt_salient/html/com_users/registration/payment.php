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
<form action="https://ssl.ditonlinebetalingssystem.dk/integration/ewindow/Default.aspx" method="post" id="paymetForm">
    <input name="merchantnumber" value="8021238">
    <input name="amount" value="<?php echo $amount*100;?>">
    <input name="currency" value="DKK">
    <input name="windowstate" value="3">
</form>
<script type="application/javascript">
jQuery( document ).ready(function() {
	jQuery("#paymetForm").submit();
});
</script>