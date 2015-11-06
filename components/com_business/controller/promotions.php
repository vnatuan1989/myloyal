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
class BusinessControllerPromotions extends JControllerForm
{
    public function delete()
    {
        $app	= JFactory::getApplication();
        $model	= $this->getModel('Promotions', 'BusinessModel');
        
        $jinput = JFactory::getApplication()->input;
        $id     = $jinput->get('id', 1, 'INT');
//        print_r(JRoute::_('index.php?option=com_business&view=promotions&layout=complete'));die;
        $result = $model->deletePromotion($id);
        
        if($result == true)
        {
            $this->setRedirect('index.php?option=com_business&view=promotions&layout=complete');
        }
        else
        {
            $this->setRedirect(JRoute::_('index.php?option=com_business&view=promotions&layout=fail', false));
        }
    }
}
