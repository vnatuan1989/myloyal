<?php
defined('_JEXEC') or die;

$userId = JRequest::getVar("userid");
$package = JRequest::getVar("package");
$subscriptionid = JRequest::getVar("subscriptionid");
if(empty($subscriptionid)){
	$subscriptionid = "test_subscriptionid";
}

if($package == 1){
	$expired = time() + (30 * 24 * 60 * 60);
	$numMonth = 1;
}
if($package == 2){
	$expired = time() + (183 * 24 * 60 * 60);
	$numMonth = 6;
}
if($package == 3){
	$expired = time() + (365 * 24 * 60 * 60);
	$numMonth = 12;
}
$amount = JRequest::getVar("amount")/100;

$db = JFactory:: getDBO();
$db->setQuery("UPDATE #__business SET subscriptionid = ".JRequest::getVar("subscriptionid").", timeExpired = '".$expired."', numMonthPayment = $numMonth, transactionPayment = '".JRequest::getVar("txnid")."' WHERE userId = ".$userId);
$db->execute();

$q = "INSERT INTO #__log_payment(userId, paymentMoney, transactionId, createdAt) VALUES ($userId, $amount, '".JRequest::getVar("txnid")."', ".time().");";
$db->setQuery($q);
$db->execute();

/*$q = "UPDATE #__users SET block = 0, sendEmail = 1, activation = '' WHERE id = ".$userId;
$db->setQuery($q);
$db->execute();*/

$q = "UPDATE #__user_usergroup_map SET group_id = 3 WHERE user_id = ".$userId;
$db->setQuery($q);
$db->execute();

?>
<div class="registration-complete<?php echo $this->pageclass_sfx;?>">
	Thanks for your register
</div>
