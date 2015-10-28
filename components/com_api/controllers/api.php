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
			if($userAvatar){
				unlink(JPATH_ROOT.DIRECTORY_SEPARATOR.'images'.DIRECTORY_SEPARATOR.'avatar'.DIRECTORY_SEPARATOR.$userAvatar);
			}
			$fileName = sha1(uniqid()).".jpg";
			$decoded_img=base64_decode($avatar);
			file_put_contents(JPATH_ROOT.DIRECTORY_SEPARATOR.'images'.DIRECTORY_SEPARATOR.'avatar'.DIRECTORY_SEPARATOR.$fileName,$decoded_img);
			$avatarStr = ", avatar = '".$fileName."'";
		} else {
			$avatarStr = "";
		}
		
		if($removeAvatar){
			$user = JFactory::getUser($userId);
			$userAvatar = $user->avatar;
			if($userAvatar){
				unlink(JPATH_ROOT.DIRECTORY_SEPARATOR.'images'.DIRECTORY_SEPARATOR.'avatar'.DIRECTORY_SEPARATOR.$userAvatar);
			}
			$avatarStr = ", avatar = ''";
		}
		
		$db = JFactory::getDBO();
		$name = $firstName." ".$lastName;
		$q = "UPDATE #__users SET name = '".$name."', firstName = '".$firstName."', lastName = '".$lastName."'".$passStr.$avatarStr." WHERE id = ".$userId;
		$db->setQuery($q);
		if($db->execute()){
			$user1 = JFactory::getUser($userId);
			$return["result"] = 1;
			$return["error"] = "";
			$return['userId'] = $user1->id;
			$return['firstName'] = $user1->firstName;
			$return['lastName'] = $user1->lastName;
			$return['email'] = $user1->email;
			if($user->avatar){
				$return['avatar'] = JURI::base()."images/avatar/".$user1->avatar;
			} else {
				$return['avatar'] = "";
			}
			$return['facebookId'] = $user1->facebookId;
		} else {
			$return["result"] = 0;
			$return["error"] = "Can't update profile";
		}
		die(json_encode($return));
	}
	
	public function facebookLogin(){
		$facebookId = JRequest::getVar("facebookId");
		$email = JRequest::getVar("email");
		$firstName = JRequest::getVar("firstName");
		$lastName = JRequest::getVar("lastName");
		$name = $firstName." ".$lastName;
		
		$db = JFactory::getDBO();
		$db->setQuery("SELECT id FROM #__users WHERE facebookId = '".$facebookId."'");	
		$userId = $db->loadResult();
		
		if($userId){
			$db->setQuery("UPDATE #__users SET name = '".$name."', firstName = '".$firstName."', lastName = '".$lastName."' WHERE id = ".$userId);
			$db->execute();
			
			$user = JFactory::getUser($userId);		
			$return['result'] = 1;
			$return['error'] = "";
			$return['userId'] = $user->id;
			$return['firstName'] = $firstName;
			$return['lastName'] = $lastName;
			$return['email'] = $user->email;
			$return['avatar'] = "";
			$return['facebook_id'] = $facebookId;
		} else {
			$db->setQuery("SELECT id FROM #__users WHERE email = '".$email."'");
			if($db->loadResult()){
				$return["result"] = 0;
				$return["error"] = "You can't use this email, it is in use";
			} else {
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
				$return["result"] = 1;
				$return["error"] = "";
			} else {
				$return["result"] = 0;
				$return["error"] = "Can not update new password";
			}
		} else {
			$return["result"] = 0;
			$return["error"] = "Can not send email";
		}
		die(json_encode($return));
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
		$send['request'] = array('application' => '234F7-B24E8', 'push_token'=>$token, 'language'=>'da', 'hwid'=>$hwId, 'timezone'=>3600, 'device_type'=>$type);
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
		
		$url = 'https://cp.pushwoosh.com/json/1.3/setTags';
		$send['request'] = array('application' => '234F7-B24E8', 'hwid'=>$hwId, 'tags'=>array('userId'=>$userId));
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
		$hwId = JRequest::getVar("hwId");
		
		$db = JFactory::getDBO();
		$q = "DELETE FROM #__user_tokens WHERE hwId = '".$hwId."'";
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
		$send['request'] = array('application' => '234F7-B24E8', 'hwid'=>$hwId);
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
	
	public function getTerm(){
		$db = JFactory::getDBO();
		$db->setQuery("SELECT introtext FROM #__content WHERE id = 20");
		$data = $db->loadObject();

		$return['text'] = $data->introtext;
		die(json_encode($return));
	}
	
	public function getNearest(){
		$lat = JRequest::getVar("lat");
		$long = JRequest::getVar("long");
		
		$db = JFactory::getDBO();
		$q = "SELECT id as businessId, businessName, icon, type, businessEmail, address, city, latitude, longitude, ( 6371 * acos( cos( radians(".$lat.") ) * cos( radians( latitude ) ) * cos( radians( longitude ) - radians(".$long.") ) + sin( radians(".$lat.") ) * sin( radians( latitude ) ) ) ) AS distance FROM #__business HAVING distance < 25 ORDER BY distance LIMIT 0 , 20;";
		$db->setQuery($q);
		$stores = $db->loadAssocList();
		if($stores){
			$i = 0;
			foreach($stores as $store){
				if($store['icon']){
					$stores[$i]['icon'] = JURI::base().$store['icon'];
				}
				$i++;
			}
			$return['result'] = 1;
			$return['error'] = "";
			$return['data'] = $stores;
		} else {
			$return['result'] = 0;
			$return['error'] = "No result";
		}
		die(json_encode($return));
	}
	
	public function searchBusiness(){
		$lat = JRequest::getVar("lat");
		$long = JRequest::getVar("long");
		$keyword = JRequest::getVar("keyword");
		$keyword = strtolower($keyword);
		
		$db = JFactory::getDBO();
		$q = "SELECT id as businessId, businessName, icon, type, businessEmail, address, city, latitude, longitude FROM #__business WHERE LOWER(`businessName`) LIKE '%".$keyword."%'";
		$db->setQuery($q);
		$stores = $db->loadAssocList();
		
		if($stores){
			$i = 0;
			foreach($stores as $store){
				$stores[$i]['distance'] = $this->distance($store['latitude'], $store['longitude'], $lat, $long);
				if($store['icon']){
					$stores[$i]['icon'] = JURI::base().$store['icon'];
				}
				$i++;
			}
			$return['result'] = 1;
			$return['error'] = "";
			$return['data'] = $stores;
		} else {
			$return['result'] = 0;
			$return['error'] = "No result";
		}
		die(json_encode($return));
	}
	
	function distance($lat1, $lon1, $lat2, $lon2) {
		$theta = $lon1 - $lon2;
		$dist = sin(deg2rad($lat1)) * sin(deg2rad($lat2)) +  cos(deg2rad($lat1)) * cos(deg2rad($lat2)) * cos(deg2rad($theta));
		$dist = acos($dist);
		$dist = rad2deg($dist);
		$miles = $dist * 60 * 1.1515;
		
		return ($miles * 1.609344);
	}
	
	function _timeElapsedString($ptime){
		$etime = time() - $ptime;
		if ($etime < 10)
		{
			return 'just now';
		}
		$a = array( 12 * 30 * 24 * 60 * 60  =>  'year',
					30 * 24 * 60 * 60       =>  'month',
					24 * 60 * 60            =>  'day',
					60 * 60                 =>  'hour',
					60                      =>  'minute',
					1                       =>  'second'
					);
		foreach ($a as $secs => $str){
			$d = $etime / $secs;
			if ($d >= 1){
				$r = round($d);
				return $r . ' ' . $str . ($r > 1 ? 's' : '') . ' ago';
			}
		}
	}
	
	public function getFavouriteBusiness(){
		$customerId = JRequest::getVar("customerId");
		$lat = JRequest::getVar("lat");
		$long = JRequest::getVar("long");
		
		$db = JFactory::getDBO();
		$q = "SELECT c.businessId, c.createdAt, b.businessName, b.icon, b.type, b.businessEmail, b.address, b.city, b.latitude, b.longitude FROM #__checkin c INNER JOIN #__business b ON c.businessId = b.id WHERE c.customerId = ".$customerId." GROUP BY c.businessId ORDER BY c.createdAt LIMIT 20";
		$db->setQuery($q);
		$stores = $db->loadAssocList();
		
		if($stores){
			$i = 0;
			foreach($stores as $store){
				$stores[$i]['distance'] = $this->distance($store['latitude'], $store['longitude'], $lat, $long);
				if($store['icon']){
					$stores[$i]['icon'] = JURI::base().$store['icon'];
				}
				$i++;
			}
			$return['result'] = 1;
			$return['error'] = "";
			$return['data'] = $stores;
		} else {
			$return['result'] = 0;
			$return['error'] = "No result";
		}
		die(json_encode($return));
	}
	
	public function checkIn(){
		$customerId = JRequest::getVar("customerId");
		$businessId = JRequest::getVar("businessId");
		
		$db = JFactory::getDBO();
		$q = "INSERT INTO #__checkin (customerId, businessId, createdAt) VALUES ($customerId, $businessId, ".time().")";
		$db->setQuery($q);
		if($db->execute()){
			$return['result'] = 1;
			$return['error'] = "";
		} else {
			$return['result'] = 0;
			$return['error'] = "Error when checkin";
		}

		/*$url = 'https://cp.pushwoosh.com/json/1.3/createTargetedMessage';
		$send['request'] = array('auth' => '8PaXOfTn9dzkNuqiMmup9jcmAKDppghCgAgvKqG5u0ArjTBgedOhVxMtzZIT0tibOUFJ3oPilAY1gWbSIt4E', 'send_date'=>'now', 'content'=>$customerId.' checked in your business', 'devices_filter'=>'A("234F7-B24E8") * T("userId", EQ, '.$businessId.')');

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
		curl_close($ch);*/
		//print "[PW] request: $request\n";
        //print "[PW] response: $response\n";
        //print "[PW] info: " . print_r($info, true);
		
		die(json_encode($return));
	}
	
	public function getBusinessDetail(){
		$businessId = JRequest::getVar("businessId");
		
		$db = JFactory::getDBO();
		$q = "SELECT dateType, fromTime, toTime, close FROM #__workingtime WHERE businessId = ".$businessId." ORDER BY dateType";
		$db->setQuery($q);
		$times = $db->loadAssocList();
		
		$q = "SELECT businessNam, businessEmail, address, city, icon, latitude, longitude, type FROM #__business WHERE id = ".$businessId;
		$db->setQuery($q);
		$data = $db->loadAssoc();
		
		$return['result'] = 1;
		$return['error'] = "";
		if($data['icon']){
			$data['icon'] = JURI::base().$data['icon'];
		}
		$return['data'] = $data;
		$return['data']['workingTime'] = $times;
		
		die(json_encode($return));
	}
	
	public function getPromotions(){
		$customerId = JRequest::getVar("customerId");
		$businessId = JRequest::getVar("businessId");
		$businessType = JRequest::getVar("businessType");
		
		$db = JFactory::getDBO();
		/*$db->setQuery("SELECT type FROM #__business WHERE id = ".$businessId);*/
		if($businessType == 1){
			$return['myPoint'] = $this->_getPoint($customerId, $businessId);
			
			$q = "SELECT id, title, content, point, icon FROM #__promotion WHERE businessId = ".$businessId." AND endDate > ".time();
			$db->setQuery($q);
			$promotions = $db->loadAssocList();
			
			if($promotions){
				$return['result'] = 1;
				$return['error'] = "";
				for($i=0; $i<count($promotions); $i++){
					$promotions[$i]['icon'] = JURI::base().$promotions[$i]['icon'];
				}
				$return['promotions'] = $promotions;
			} else {
				$return['result'] = 0;
				$return['error'] = "No result";
			}
		} else {
			$q = "SELECT id, title, content, stamp, icon FROM #__promotion WHERE businessId = ".$businessId." AND endDate > ".time();
			$db->setQuery($q);
			$promotions = $db->loadAssocList();
			
			if($promotions){
				$return['result'] = 1;
				$return['error'] = "";
				$i = 0;
				foreach($promotions as $promotion){
					$db->setQuery("SELECT numStamp FROM #__stamp WHERE promotionId = ".$promotion['id']." AND customerId = ".$customerId);
					$promotions[$i]['myStamp'] = $db->loadResult();
					$promotions[$i]['icon'] = JURI::base().$promotions[$i]['icon'];
					$i++;
				}
				$return['promotions'] = $promotions;
			} else {
				$return['result'] = 0;
				$return['error'] = "No result";
			}
		}
		die(json_encode($return));
	}
	public function _getPoint($customerId, $businessId){
		$db = JFactory::getDBO();
		$db->setQuery("SELECT point FROM #__point WHERE customerId = ".$customerId." AND businessId = ".$businessId);
		if($db->loadResult()){
			return $db->loadResult();
		} else {
			return 0;
		}
	}
	
	
	// Business
	public function getCheckIn(){
		$businessId = JRequest::getVar("businessId");
		$page = JRequest::getVar("page", 1);
		
		$limitstart = ($page-1)*20;
		$db = JFactory::getDBO();
		$q = "SELECT customerId, createdAt FROM (SELECT customerId, createdAt FROM #__checkin WHERE businessId = ".$businessId." ORDER BY createdAt DESC) a GROUP BY customerId ORDER BY createdAt DESC LIMIT ".$limitstart.", 20";
		$db->setQuery($q);
		$users = $db->loadAssocList();
		if($users){
			$i = 0;
			foreach($users as $user){
				$q = "SELECT firstname, lastname, avatar FROM #__users WHERE id = ".$user['customerId'];
				$db->setQuery($q);
				$tmp = $db->loadObject();
				$users[$i]['firstname'] = $tmp->firstname;
				$users[$i]['lastname'] = $tmp->lastname;
				if($tmp->avatar){
					$users[$i]['avatar'] = JURI::base()."images/avatar/".$tmp->avatar;
				} else {
					$users[$i]['avatar'] = "";
				}
				$users[$i]['elapsed'] = $this->_timeElapsedString($user['createdAt']);
				$i++;
			}
			$return['result'] = 1;
			$return['error'] = "";
			$return['data'] = $users;
		} else {
			$return['result'] = 0;
			$return['error'] = "No result";
			$return['data'] = "";
		}
		die(json_encode($return));
	}
	
	public function searchCustomer(){
		$keyword = JRequest::getVar("keyword");
		$keyword = strtolower($keyword);
		
		$db = JFactory::getDBO();
		$q = "SELECT id, firstname, lastname, avatar FROM #__users WHERE LOWER(`firstname`) LIKE '%".$keyword."%' OR LOWER(`lastname`) LIKE '%".$keyword."%'";
		$db->setQuery($q);
		$users = $db->loadAssocList();
		
		if($users){
			$i = 0;
			foreach($users as $user){
				if($user['avatar']){
					$users[$i]['avatar'] = JURI::base()."images/avatar/".$user['avatar'];
				} else {
					$users[$i]['avatar'] = "";
				}
				
				$db->setQuery("SELECT createdAt FROM #__checkin WHERE customerId = ".$user['id']." ORDER BY createdAt DESC LIMIT 1");
				$users[$i]['createdAt'] = $db->loadResult();
				$users[$i]['elapsed'] = $this->_timeElapsedString($users[$i]['createdAt']);
				$users[$i]['customerId'] = $user['id'];
				$i++;
			}
			function cmp_by_createdAt($a, $b) {
				return $b["createdAt"] - $a["createdAt"];
			}
			usort($users, "cmp_by_createdAt");
			$return['result'] = 1;
			$return['error'] = "";
			$return['data'] = $users;
		} else {
			$return['result'] = 0;
			$return['error'] = "No result";
		}
		die(json_encode($return));
	}
	
	
}
