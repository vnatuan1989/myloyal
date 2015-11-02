<?php
/**
 * @package     Joomla.Administrator
 * @subpackage  com_helloworld
 *
 * @copyright   Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

// No direct access to this file
defined('_JEXEC') or die;

// Require helper file
//JLoader::register('BusinessHelper', JPATH_COMPONENT . '/helpers/business.php');
// Set some global property
$document = JFactory::getDocument();
JLoader::register('BusinessHelper', JPATH_COMPONENT . '/helpers/business.php');
// Get an instance of the controller prefixed by HelloWorld
$controller = JControllerLegacy::getInstance('Business');


// Perform the Request task
$input = JFactory::getApplication()->input;
$controller->execute($input->getCmd('task'));

// Redirect if set by the controller
$controller->redirect();

