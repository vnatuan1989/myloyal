
<?php
/**
 * @package     Joomla.Administrator
 * @subpackage  com_helloworld
 *
 * @copyright   Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */
 
// No direct access to this file
defined('_JEXEC') or die('Restricted access');
 
/**
 * HelloWorlds View
 *
 * @since  0.0.1
 */
class BusinessViewPromotions extends JViewLegacy
{
	/**
	 * Display the Hello World view
	 *
	 * @param   string  $tpl  The name of the template file to parse; automatically searches through the template paths.
	 *
	 * @return  void
	 */
	function display($tpl = null)
	{
                $app = JFactory::getApplication();		
                $context = "business.list.admin.business";
                
		// Get data from the model
		$this->items		= $this->get('Items');
		$this->pagination	= $this->get('Pagination');
                $this->state            = $this->get('State');		
                $this->filter_order 	= $app->getUserStateFromRequest($context.'filter_order', 'filter_order', 'businessName', 'cmd');
                $this->filter_order_Dir = $app->getUserStateFromRequest($context.'filter_order_Dir', 'filter_order_Dir', 'asc', 'cmd');		
                $this->filterForm    	= $this->get('FilterForm');
                $this->activeFilters 	= $this->get('ActiveFilters');
 
		// Check for errors.
		if (count($errors = $this->get('Errors')))
		{
			JError::raiseError(500, implode('<br />', $errors));
 
			return false;
		}
                BusinessHelper::addSubmenu('promotions');
		// Set the toolbar		
                $this->addToolBar(); 
		// Display the template
		parent::display($tpl);
                // Set the document		
                $this->setDocument();
	}
 
	/**
	 * Add the page title and toolbar.
	 *
	 * @return  void
	 *
	 * @since   1.6
	 */
	protected function addToolBar()	
        {
            $title = JText::_('COM_HELLOWORLD_MANAGER_HELLOWORLDS'); 		
            if ($this->pagination->total)		
            {			
                $title .= "<span style='font-size: 0.5em; vertical-align: middle;'>(" . $this->pagination->total . ")</span>";		
            }
            JToolBarHelper::title(JText::_('COM_HELLOWORLD_MANAGER_HELLOWORLDS'));		
            JToolBarHelper::addNew('promotion.add');		
            JToolBarHelper::editList('promotion.edit');
            JToolBarHelper::deleteList('', 'promotions.delete');
        }
        protected function setDocument() 	
        {		
            $document = JFactory::getDocument();	
            $document->setTitle(JText::_('COM_HELLOWORLD_ADMINISTRATION'));	
        }
}

