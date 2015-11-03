<?php
/**
 * @package     Joomla.Administrator
 * @subpackage  com_business
 *
 * @copyright   Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

// No direct access to this file
defined('_JEXEC') or die;

/**
 * HelloWorld Model
 *
 * @since  0.0.1
 */
class BusinessModelBusiness extends JModelItem
{
	/**
	 * @var array messages
	 */
	protected $messages;

	/**
	 * Method to get a table object, load it if necessary.
	 *
	 * @param   string  $type    The table name. Optional.
	 * @param   string  $prefix  The class prefix. Optional.
	 * @param   array   $config  Configuration array for model. Optional.
	 *
	 * @return  JTable  A JTable object
	 *
	 * @since   1.6
	 */
	public function getTable($type = 'Business', $prefix = 'BusinessTable', $config = array())
	{
		return JTable::getInstance($type, $prefix, $config);
	}

	/**
	 * Get the message
	 *
	 * @param   integer  $id  Greeting Id
	 *
	 * @return  string        Fetched String from Table for relevant Id
	 */
        public function display($tpl = null)
	{
		// Get the view data.
		$this->data		= $this->get('Data');
		$this->form		= $this->get('Form');
		$this->state	= $this->get('State');
		$this->params	= $this->state->get('params');

		// Check for errors.
		if (count($errors = $this->get('Errors')))
		{
			JError::raiseError(500, implode('<br />', $errors));

			return false;
		}

		// Check for layout override
		$active = JFactory::getApplication()->getMenu()->getActive();

		if (isset($active->query['layout']))
		{
			$this->setLayout($active->query['layout']);
		}

		// Escape strings for HTML output
		$this->pageclass_sfx = htmlspecialchars($this->params->get('pageclass_sfx'));

		$this->prepareDocument();

		return parent::display($tpl);
	}
        
	public function getMsg($id = 1)
	{
            $user = JFactory::getUser(431);
            if (!is_array($this->messages))
		{
			$this->messages = array();
		}

		if (!isset($this->messages[$id]))
		{
			// load data for business
                        $db    = JFactory::getDbo();
                        $query = $db->getQuery(true);

                        // Create the base select statement.
                        $query->select('*')
                        ->from($db->quoteName('#__business','a'))
                        ->where($db->quoteName('a.userId') . ' = ' . $user->id);
                        
                        $db->setQuery($query);
			// Assign the message
			$this->messages[$id] = $db->loadAssoc();
                        
                        $queryDatetime = $db->getQuery(true);
                        $queryDatetime->select('*')
                        ->from($db->quoteName('#__workingtime','a'))
                        ->where($db->quoteName('a.businessId') . ' = ' . $this->messages[$id]['id']);
                        $db->setQuery($queryDatetime);
                        $this->messages[$id]['workingtime'] = $db->loadAssocList();
		}

		return $this->messages[$id];
	}
}
