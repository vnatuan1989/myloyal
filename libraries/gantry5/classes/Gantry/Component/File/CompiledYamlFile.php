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

namespace Gantry\Component\File;

use Gantry\Framework\Gantry;
use RocketTheme\Toolbox\File\YamlFile;

class CompiledYamlFile extends YamlFile
{
    use CompiledFile;

    protected function __construct()
    {
        parent::__construct();

        $gantry = Gantry::instance();

        if (isset($gantry['file.yaml.cache.path'])) {
            $this->setCachePath($gantry['file.yaml.cache.path']);
        }
    }
}
