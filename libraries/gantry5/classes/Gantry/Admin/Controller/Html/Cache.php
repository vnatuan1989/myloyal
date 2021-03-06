<?php

/**
 * @package   Gantry5
 * @author    RocketTheme http://www.rockettheme.com
 * @copyright Copyright (C) 2007 - 2015 RocketTheme, LLC
 * @license   Dual License: MIT or GNU/GPLv2 and later
 *
 * http://opensource.org/licenses/MIT
 * http://www.gnu.org/licenses/gpl-2.0.html
 *
 * Gantry Framework code that extends GPL code is considered GNU/GPLv2 and later
 */

namespace Gantry\Admin\Controller\Html;

use Gantry\Component\Controller\HtmlController;
use Gantry\Component\Response\JsonResponse;
use Gantry\Component\Filesystem\Folder;
use RocketTheme\Toolbox\ResourceLocator\UniformResourceLocator;

class Cache extends HtmlController
{
    public function index()
    {
        /** @var UniformResourceLocator $locator */
        $locator = $this->container['locator'];

        Folder::delete($locator('gantry-cache://theme'), false);
        Folder::delete($locator('gantry-cache://admin'), false);

        return new JsonResponse(['html' => 'Cache was successfully cleared', 'title' => 'Cache Cleared']);
    }
}
