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

namespace Gantry\Component\Theme;

use Gantry\Component\Config\Config;
use Gantry\Component\Layout\Layout;
use Gantry\Component\Stylesheet\CssCompilerInterface;

/**
 * Class ThemeTrait
 * @package Gantry\Framework\Base
 *
 * @property string $path
 * @property string $layout
 */
interface ThemeInterface
{
    /**
     * Initialize theme.
     */
    public function init();

    /**
     * Update all CSS files in the theme.
     */
    public function updateCss();

    /**
     * Set current layout.
     *
     * @param string $name
     * @return $this
     */
    public function setLayout($name = null);

    /**
     * Get current preset.
     *
     * @param  bool $forced     If true, return only forced preset or null.
     * @return string|null $preset
     */
    public function preset($forced = false);

    /**
     * Set preset to be used.
     *
     * @param string $name
     * @return $this
     */
    public function setPreset($name = null);

    /**
     * Return CSS compiler used in the theme.
     *
     * @return CssCompilerInterface
     * @throws \RuntimeException
     */
    public function compiler();

    /**
     * Returns URL to CSS file.
     *
     * If file does not exist, it will be created by using CSS compiler.
     *
     * @param string $name
     * @return string
     */
    public function css($name);

    /**
     * Return all CSS variables.
     *
     * @return array
     */
    public function getCssVariables();

    /**
     * Returns style presets for the theme.
     *
     * @return Config
     */
    public function presets();

    /**
     * Load current layout and its configuration.
     *
     * @param string $name
     * @return Layout
     * @throws \LogicException
     */
    public function loadLayout($name = null);

    public function add_to_context(array $context);

    /**
     * Returns all non-empty segments from the layout.
     *
     * @return array
     */
    public function segments();

    public function add_to_twig(\Twig_Environment $twig, \Twig_Loader_Filesystem $loader = null);
    /**
     * Returns details of the theme.
     *
     * @return ThemeDetails
     */
    public function details();

    /**
     * Returns configuration of the theme.
     *
     * @return array
     */
    public function configuration();

    /**
     * Function to convert block sizes into CSS classes.
     *
     * @param $text
     * @return string
     */
    public function toGrid($text);

    /**
     * Returns renderer.
     *
     * @return \Twig_Environment
     */
    public function renderer();

    /**
     * Render a template file.
     *
     * @param string $file
     * @param array $context
     * @return string
     */
    public function render($file, array $context = array());
}
