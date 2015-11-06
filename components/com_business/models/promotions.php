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
class BusinessModelPromotions extends JModelItem
{
	/**
	 * @var array messages
	 */
	protected $promotions;

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
	public function getTable($type = 'Promotion', $prefix = 'BusinessTable', $config = array())
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
	public function getPromotions()
	{
            $user = JFactory::getUser(431);
            if (!is_array($this->promotions))
            {
                    $this->promotions = array();
            }

            if (isset($this->promotions))
            {
                    // load data for business
                    $db    = JFactory::getDbo();
                    $query = $db->getQuery(true);

                    // Create the base select statement.
                    $query->select('c.*')
                    ->from($db->quoteName('#__users','a'))
                    ->join('INNER',$db->quoteName('#__business','b'). ' ON (' . $db->quoteName('a.id') . ' = ' . $db->quoteName('b.userId') . ')')
                    ->join('INNER',$db->quoteName('#__promotion','c'). ' ON (' . $db->quoteName('b.id') . ' = ' . $db->quoteName('c.businessId') . ')')
                    ->where($db->quoteName('a.id') . ' = ' . $user->id);

                    $db->setQuery($query);
                    // Assign the message
                    $this->promotions = $db->loadAssocList();
            }
            return $this->promotions;
	}
        public function deletePromotion($id)
        {
            $db = JFactory::getDbo();
            $query = $db->getQuery(true);
            //Delete all workingtime of business
            $conditions = array(
                $db->quoteName('id') . ' = ' . $id
            );
            $query->delete($db->quoteName('#__promotion'));
            $query->where($conditions);
            $db->setQuery($query);
            $result = $db->execute();
            return $result;
        }
}
