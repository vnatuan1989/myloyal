<?php
defined('_JEXEC') or die;

jimport('joomla.application.component.controller');

class ApiControllerApi extends JControllerLegacy {

	public function test(){
		die("Loyal API is ok!!!");
	}
	
	public function customerRegister(){
		$firstName = JRequest::getVar("firstName");
		$lastName = JRequest::getVar("lastName");
		$email = JRequest::getVar("email");
		$password = JRequest::getVar("password");
		$confirmPassword = JRequest::getVar("confirmPassword");
		$avatar = JRequest::getVar("avatar");
		
		if($password != $confirmPassword){
			$return["result"] = 0;
			$return["error"] = "Confirm password is not match";
			die(json_encode($return));
		}
		$db = JFactory::getDBO();
		$db->setQuery("SELECT id FROM #__users WHERE email = '".$email."'");
		if($db->loadResult()){
			$return["result"] = 0;
			$return["error"] = "You can't use this email, it is in use";
			die(json_encode($return));
		}
		
		jimport('joomla.user.helper');
		$pass = JUserHelper::hashPassword($password);
		$name = $firstName." ".$lastName;
		if($avatar){
			$fileName = sha1(uniqid()).".jpg";
			$decoded_img=base64_decode($avatar);
			file_put_contents(JPATH_ROOT.DIRECTORY_SEPARATOR.'images'.DIRECTORY_SEPARATOR.'avatar'.DIRECTORY_SEPARATOR.$fileName,$decoded_img);
			$q = "INSERT INTO #__users(name, username, email, password, sendEmail, registerDate, lastName, firstName, avatar) VALUES ('".$name."', '".$email."', '".$email."', '".$pass."', 1, NOW(), '".$firstName."', '".$lastName."', '".$fileName."')";
		} else {
			$q = "INSERT INTO #__users(name, username, email, password, sendEmail, registerDate, lastName, firstName) VALUES ('".$name."', '".$email."', '".$email."', '".$pass."', 1, NOW(), '".$firstName."', '".$lastName."')";
		}
		$db->setQuery($q);
		$db->execute();
		
		$q = "INSERT INTO #__user_usergroup_map VALUES (".$db->insertid().", 2)";
		$db->setQuery($q);
		$db->execute();
				
		$return["result"] = 1;	
		die(json_encode($return));	
	}
	
    public function customerLogin() {
		$app    = JFactory::getApplication();
		$email = JRequest::getVar("email");
		$password = JRequest::getVar("password");
		
		$credentials["username"] = $email;
		$credentials["password"] = $password;
		
		$options['remember'] = false;
		$options['return']   = '';
		
		$result = $app->login($credentials, $options);
		if($result == true){
			$db = JFactory::getDBO();
			
			$user = JFactory::getUser();
			
			$return['result'] = 1;
			$return['error'] = "";
			$return['userId'] = $user->id;
			$return['firstName'] = $user->firstName;
			$return['lastName'] = $user->lastName;
			$return['email'] = $user->email;
			$return['avatar'] = JURI::base()."images/avatar/".$user->avatar;
			$return['facebookId'] = "";
			
		} else {
			$return["result"] = 0;
			$return["error"] = "Email or password is incorrect";
		}
        die(json_encode($return));
    }
	
	public function customerUpdate(){
		$userId = JRequest::getVar("userId");
		$firstName = JRequest::getVar("firstName");
		$lastName = JRequest::getVar("lastName");
		$password = JRequest::getVar("password");
		$confirmPassword = JRequest::getVar("confirmPassword");
		$avatar = JRequest::getVar("avatar");
		$removeAvatar = JRequest::getVar("removeAvatar");
		
		if($password != $confirmPassword){
			$return["result"] = 0;
			$return["error"] = "Confirm password is not match";
			die(json_encode($return));
		}
		
		if($password){
			jimport('joomla.user.helper');
			$pass = JUserHelper::hashPassword($password);
			$passStr = ", password = '".$pass."'";
		} else {
			$passStr = "";
		}
		if($avatar){
			$user = JFactory::getUser($userId);
			$userAvatar = $user->avatar;
			unlink(JPATH_ROOT.DIRECTORY_SEPARATOR.'images'.DIRECTORY_SEPARATOR.'avatar'.DIRECTORY_SEPARATOR.$userAvatar);
			$fileName = sha1(uniqid()).".jpg";
			$decoded_img=base64_decode($avatar);
			file_put_contents(JPATH_ROOT.DIRECTORY_SEPARATOR.'images'.DIRECTORY_SEPARATOR.'avatar'.DIRECTORY_SEPARATOR.$fileName,$decoded_img);
			$avatarStr = ", avatar = '".$firstName."'";
		} else {
			$avatarStr = "";
		}
		
		if($removeAvatar){
			$user = JFactory::getUser($userId);
			$userAvatar = $user->avatar;
			unlink(JPATH_ROOT.DIRECTORY_SEPARATOR.'images'.DIRECTORY_SEPARATOR.'avatar'.DIRECTORY_SEPARATOR.$userAvatar);
			$avatarStr = ", avatar = ''";
		}
		
		$name = $firstName." ".$lastName;
		$q = "UPDATE #__users SET name = '".$name."', firstName = '".$firstName."', lastName = '".$lastName."'".$passStr.$avatarStr;
		$db->setQuery($q);
		if($db->execute()){
			$user = JFactory::getUser($userId);
			$return["result"] = 1;
			$return["error"] = "";
			$return['userId'] = $user->id;
			$return['firstName'] = $user->firstName;
			$return['lastName'] = $user->lastName;
			$return['email'] = $user->email;
			if($user->avatar){
				$return['avatar'] = JURI::base()."images/avatar/".$user->avatar;
			} else {
				$return['avatar'] = "";
			}
			$return['facebookId'] = $user->facebookId;
		} else {
			$return["result"] = 0;
			$return["error"] = "Can't update profile";
		}
	}
	
	public function facebookLogin(){
		$facebookId = JRequest::getVar("facebookId");
		$email = JRequest::getVar("email");
		$firstName = JRequest::getVar("firstName");
		$lastName = JRequest::getVar("lastName");
		
		$db = JFactory::getDBO();
		$db->setQuery("SELECT id FROM #__users WHERE facebookId = '".$facebookId."'");	
		$userId = $db->loadResult();
		
		if($userId){
			$user = JFactory::getUser($userId);		
			$return['result'] = 1;
			$return['error'] = "";
			$return['userId'] = $user->id;
			$return['firstName'] = $user->firstName;
			$return['lastName'] = $user->lastName;
			$return['email'] = $user->email;
			$return['avatar'] = "";
			$return['facebook_id'] = $facebookId;
		} else {
			$db->setQuery("SELECT id FROM #__users WHERE email = '".$email."'");
			if($db->loadResult()){
				$return["result"] = 0;
				$return["error"] = "You can't use this email, it is in use";
			} else {
				$name = $firstName." ".$lastName;
				$q = "INSERT INTO #__users(name, username, email, sendEmail, registerDate, lastName, firstName, facebookId) VALUES ('".$name."', '".$email."', '".$email."', 1, NOW(), '".$firstName."', '".$lastName."', '".$facebookId."')";
				$db->setQuery($q);
				$db->execute();
				
				$q = "INSERT INTO #__user_usergroup_map VALUES (".$db->insertid().", 2)";
				$db->setQuery($q);
				$db->execute();
				
				$return['result'] = 1;
				$return['error'] = "";
				$return['userId'] = $db->insertid();
				$return['firstName'] = $firstName;
				$return['lastName'] = $lastName;
				$return['email'] = $email;
				$return['avatar'] = "";
				$return['facebook_id'] = $facebookId;
			}
		}
		die(json_encode($return));
	}
	
	public function forgotPassword(){
		$email = JRequest::getVar("email");
		
		$new_pass = $this->_generateRandomString();
		
		$app = JFactory::getApplication();
		$mailfrom = $app->get('mailfrom');
		$fromname = $app->get('fromname');
		$sitename = $app->get('sitename');
		$body   = "Hi user, \r\n\r\n This is your new password: ".$new_pass." \r\n\r\n Be First App";
			
		$mail = JFactory::getMailer();
		$mail->addRecipient($email);
		$mail->setSender(array($mailfrom, $fromname));
		$mail->setSubject($sitename . ': New password');
		$mail->setBody($body);
		$sent = $mail->Send();
		if($sent){
			jimport('joomla.user.helper');
			
			$db = JFactory::getDBO();
			$pass = JUserHelper::hashPassword($new_pass);
			$db->setQuery("UPDATE #__users SET password = '".$pass."' WHERE email = '".$email."'");
			if($db->query()){
				$result = array("result" => 1);
			} else {
				$data["result"] = 0;
				$data["error"] = "Can not update new password";
			}
		} else {
			$data["result"] = 0;
			$data["error"] = "Can not send email";
		}
		die(json_encode($result));
	}
	
	private function _generateRandomString($length = 10) {
		$characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
		$charactersLength = strlen($characters);
		$randomString = '';
		for ($i = 0; $i < $length; $i++) {
			$randomString .= $characters[rand(0, $charactersLength - 1)];
		}
		return $randomString;
	}
	
	public function addToken(){
		$type = JRequest::getVar("type");
		$token = JRequest::getVar("token");
		$userId = JRequest::getVar("userId");
		$hwId = JRequest::getVar("hwId");
		
		$db = JFactory::getDBO();
		$db->setQuery("SELECT id FROM #__user_tokens WHERE userId = ".$userId." AND hwId = '".$hwId."'");
		$id = $db->loadResult();
		if($id){
			$db->setQuery("UPDATE #__user_tokens SET token = '".$token."' WHERE userId = ".$userId." AND hwId = '".$hwId."'");
			if($db->execute()){
				$return["result"] = 1;
				$return["error"] = "";
			} else {
				$return["result"] = 0;
				$return["error"] = "Can not insert new token";
			}
		} else {
			$db->setQuery("INSERT INTO #__user_tokens (userId, token, hwId, type) VALUES (".$userId.", '".$token."', '".$hwId."', '".$type."')");
			if($db->execute()){
				$return["result"] = 1;
				$return["error"] = "";
			} else {
				$return["result"] = 0;
				$return["error"] = "Can not insert new token";
			}
		}
		
		//register device
		$url = 'https://cp.pushwoosh.com/json/1.3/registerDevice';
		$send['request'] = array('application' => '64BD1-55924', 'push_token'=>$token, 'language'=>'da', 'hwid'=>$hwId, 'timezone'=>3600, 'device_type'=>$type);
		$request = json_encode($send);
	 
		$ch = curl_init($url);
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
		curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
		curl_setopt($ch, CURLOPT_ENCODING, 'gzip, deflate');
		curl_setopt($ch, CURLOPT_HEADER, true);
		curl_setopt($ch, CURLOPT_POST, true);
		curl_setopt($ch, CURLOPT_POSTFIELDS, $request);
	 
		$response = curl_exec($ch);
		$info = curl_getinfo($ch);
		curl_close($ch);
		$return["api_register_device"] = $response;
		
		//set tags
		$user = JFactory::getUser( $userId );
		$email = $user->email;
		
		$url = 'https://cp.pushwoosh.com/json/1.3/setTags';
		$send['request'] = array('application' => '64BD1-55924', 'hwid'=>$hwId, 'tags'=>array('email'=>$email));
		$request = json_encode($send);
	 
		$ch = curl_init($url);
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
		curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
		curl_setopt($ch, CURLOPT_ENCODING, 'gzip, deflate');
		curl_setopt($ch, CURLOPT_HEADER, true);
		curl_setopt($ch, CURLOPT_POST, true);
		curl_setopt($ch, CURLOPT_POSTFIELDS, $request);
	 
		$response = curl_exec($ch);
		$info = curl_getinfo($ch);
		curl_close($ch);
		$return["api_set_tag"] = $response;
		
		die(json_encode($return));
	}
	
	public function deleteToken(){
		$userId = JRequest::getVar("userId");
		$hwId = JRequest::getVar("hwId");
		
		$db = JFactory::getDBO();
		$q = "DELETE FROM #__user_tokens WHERE userId = ".(int)$userId." AND hwId = '".$hwId."'";
		$db->setQuery($q);
		if($db->query()){
			$return["result"] = 1;
			$return["error"] = "";
		} else {
			$return["result"] = 0;
			$return["error"] = "Can not delete token";
		}
		
		//unregister device
		$url = 'https://cp.pushwoosh.com/json/1.3/unregisterDevice';
		$send['request'] = array('application' => '64BD1-55924', 'hwid'=>$hwId);
		$request = json_encode($send);
	 
		$ch = curl_init($url);
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
		curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
		curl_setopt($ch, CURLOPT_ENCODING, 'gzip, deflate');
		curl_setopt($ch, CURLOPT_HEADER, true);
		curl_setopt($ch, CURLOPT_POST, true);
		curl_setopt($ch, CURLOPT_POSTFIELDS, $request);
	 
		$response = curl_exec($ch);
		$info = curl_getinfo($ch);
		curl_close($ch);
		$return["api_unregister_device"] = $response;
		
		die(json_encode($return));
	}
	
	function getTags(){
		$hw_id = JRequest::getVar('hw_id');
		$url = 'https://cp.pushwoosh.com/json/1.3/getTags';
		$send['request'] = array('auth'=>'8PaXOfTn9dzkNuqiMmup9jcmAKDppghCgAgvKqG5u0ArjTBgedOhVxMtzZIT0tibOUFJ3oPilAY1gWbSIt4E','application' => '64BD1-55924', 'hwid'=>$hw_id);
		$request = json_encode($send);
	 
		$ch = curl_init($url);
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
		curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
		curl_setopt($ch, CURLOPT_ENCODING, 'gzip, deflate');
		curl_setopt($ch, CURLOPT_HEADER, true);
		curl_setopt($ch, CURLOPT_POST, true);
		curl_setopt($ch, CURLOPT_POSTFIELDS, $request);
	 
		$response = curl_exec($ch);
		$info = curl_getinfo($ch);
		curl_close($ch);
		print_r($response);exit;
	}
}
