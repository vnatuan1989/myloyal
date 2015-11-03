<?php
/**
 * @package     Joomla.Site
 * @subpackage  com_contact
 *
 * @copyright   Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;

JHtml::_('behavior.keepalive');
JHtml::_('behavior.formvalidator');

?>

<div id="wrapper">
        <?php require_once JPATH_SITE . "/components/com_business/views/slidebar.php";?>
        <div id="page-content-wrapper">
                <?php require_once JPATH_SITE . "/components/com_business/views/header.php";?>
            <div class="content">
                <section class="main-title">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-lg-12">
                                <h2 class="title"><i class="fa fa-home"></i> Business setting</h2>
                            </div>
                        </div>
                    </div>
                </section>
                <form id="contact-form" action="<?php echo JRoute::_('index.php?option=com_jticketing&task=event.save'); ?>" method="post" class="form-validate form-horizontal" enctype="multipart/form-data">
                    <div class="row">
                        <div class="col-md-6">
                        <?php foreach ($this->msg as $fieldBusiness)
                        {
                            if($fieldBusiness != "workingtime")
                            {

                            }
                        }
                        ?>
                        </div>
                    </div>
                </form>
            </div>
        </div>
</div>
