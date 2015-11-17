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
        protected $infomation;
        protected $promotions;
        protected $promotionById;

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
        public function getPromotionById()
	{
            $jinput = JFactory::getApplication()->input;
            $id     = $jinput->get('id', 1, 'INT');
            
            $user = JFactory::getUser();
            
            if (!is_array($this->promotionById))
            {
                    $this->promotionById = array();
            }

            if (isset($this->promotionById))
            {
                    // load data for business
                    $db    = JFactory::getDbo();
                    $query = $db->getQuery(true);

                    // Create the base select statement.
                    $query->select('c.*')
                    ->from($db->quoteName('#__users','a'))
                    ->join('INNER',$db->quoteName('#__business','b'). ' ON (' . $db->quoteName('a.id') . ' = ' . $db->quoteName('b.userId') . ')')
                    ->join('INNER',$db->quoteName('#__promotion','c'). ' ON (' . $db->quoteName('b.id') . ' = ' . $db->quoteName('c.businessId') . ')')
                    ->where($db->quoteName('a.id') . ' = ' . $user->id . " and " . $db->quoteName('c.id') . " = " . $id);

                    $db->setQuery($query);
                    // Assign the message
                    $this->promotionById = $db->loadAssoc();
            }
            
            return $this->promotionById;
	}
        
        public function getInfomation()
	{
            $user = JFactory::getUser();
            if (!is_array($this->infomation))
            {
                    $this->infomation = array();
            }

            if (isset($this->infomation))
            {
                    // load data for business
                    $db    = JFactory::getDbo();
                    $query = $db->getQuery(true);

                    // Create the base select statement.
                    $query->select('b.*')
                    ->from($db->quoteName('#__users','a'))
                    ->join('INNER',$db->quoteName('#__business','b'). ' ON (' . $db->quoteName('a.id') . ' = ' . $db->quoteName('b.userId') . ')')
                    ->where($db->quoteName('a.id') . ' = ' . $user->id);

                    $db->setQuery($query);
                    // Assign the message
                    $this->infomation = $db->loadAssoc();
            }
            return $this->infomation;
	}
        
	public function getPromotions()
	{
            $user = JFactory::getUser();
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
            $user = JFactory::getUser();
            $db = JFactory::getDbo();
            $query = $db->getQuery(true);
            $query->select('c.*')
                    ->from($db->quoteName('#__users','a'))
                    ->join('INNER',$db->quoteName('#__business','b'). ' ON (' . $db->quoteName('a.id') . ' = ' . $db->quoteName('b.userId') . ')')
                    ->join('INNER',$db->quoteName('#__promotion','c'). ' ON (' . $db->quoteName('b.id') . ' = ' . $db->quoteName('c.businessId') . ')')
                    ->where($db->quoteName('a.id') . ' = ' . $user->id . " and " . $db->quoteName('c.id') . " = " . $id);
            $db->setQuery($query);
            $result = $db->loadAssocList();
            if(!empty($result))
            {
                $querydelete = $db->getQuery(true);
                $conditions = array(
                    $db->quoteName('id') . ' = ' . $id
                );
                $querydelete->delete($db->quoteName('#__promotion'));
                $querydelete->where($conditions);
                $db->setQuery($querydelete);
                $result = $db->execute();
                return $result;
            }
            else
            {
                return false;
            }
            
        }
        public function updatePromotion($promotion)
        {
            $object = new stdClass();
            $object->id = $promotion['id'];
            $object->type = $promotion['type'];
            $object->point = $promotion['point'];
            $object->stamp = $promotion['stamp'];
            $object->title = $promotion['title'];
            $object->content = $promotion['content'];
            $object->startDate = $promotion['startDate'];
            $object->endDate = $promotion['endDate'];
            $object->updatedAt = $promotion['updatedAt'];
            $result = JFactory::getDbo()->updateObject('#__promotion', $object, 'id');
            return $result;
        }
        public function newPromotion($promotion)
        {
            $object = new stdClass();
//            $object->id = $promotion['id'];
            $object->type = $promotion['type'];
            $object->point = $promotion['point'];
            $object->stamp = $promotion['stamp'];
            $object->title = $promotion['title'];
            $object->content = $promotion['content'];
            $object->businessId = $promotion['businessId'];
            $object->startDate = $promotion['startDate'];
            $object->endDate = $promotion['endDate'];
            $object->createdAt = $promotion['createdAt'];
            $object->updatedAt = $promotion['updatedAt'];

            // Insert the object into the user profile table.
            $result = JFactory::getDbo()->insertObject('#__promotion', $object);
            return $result;
        }
}
