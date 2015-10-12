<?php

/* @gantry-admin/pages/configurations/styles/styles.html.twig */
class __TwigTemplate_764e2a29fc44084eec3149b31b48281c3823ec23fde8089170db7199f2d98863 extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        $this->blocks = array(
            'gantry' => array($this, 'block_gantry'),
        );
    }

    protected function doGetParent(array $context)
    {
        // line 1
        return $this->loadTemplate(((((isset($context["ajax"]) ? $context["ajax"] : null) - (isset($context["suffix"]) ? $context["suffix"] : null))) ? ("@gantry-admin/partials/ajax.html.twig") : ("@gantry-admin/partials/base.html.twig")), "@gantry-admin/pages/configurations/styles/styles.html.twig", 1);
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        $this->getParent($context)->display($context, array_merge($this->blocks, $blocks));
    }

    // line 3
    public function block_gantry($context, array $blocks = array())
    {
        // line 4
        $context["labels"] = array("collapse" => $this->env->getExtension('GantryTwig')->transFilter("GANTRY5_PLATFORM_COLLAPSE"), "expand" => $this->env->getExtension('GantryTwig')->transFilter("GANTRY5_PLATFORM_EXPAND"));
        // line 5
        echo "
<div id=\"styles\">
    ";
        // line 7
        $context["stored_data"] = $this->env->getExtension('GantryTwig')->jsonDecodeFilter(_twig_default_filter($this->env->getExtension('GantryTwig')->getCookie("g5-collapsed"), "{}"));
        // line 8
        echo "    <form method=\"post\" action=\"";
        echo twig_escape_filter($this->env, $this->getAttribute((isset($context["gantry"]) ? $context["gantry"] : null), "route", array(0 => "configurations", 1 => (isset($context["configuration"]) ? $context["configuration"] : null), 2 => "styles"), "method"), "html", null, true);
        echo "\">
        <span class=\"float-right\">
            <a href=\"";
        // line 10
        echo twig_escape_filter($this->env, $this->getAttribute((isset($context["gantry"]) ? $context["gantry"] : null), "route", array(0 => "configurations", 1 => (isset($context["configuration"]) ? $context["configuration"] : null), 2 => "styles/compile"), "method"), "html", null, true);
        echo "\" title=\"";
        echo twig_escape_filter($this->env, $this->env->getExtension('GantryTwig')->transFilter("GANTRY5_PLATFORM_RECOMPILE_CSS"), "html", null, true);
        echo "\" aria-label=\"";
        echo twig_escape_filter($this->env, $this->env->getExtension('GantryTwig')->transFilter("GANTRY5_PLATFORM_RECOMPILE_CSS"), "html", null, true);
        echo "\" class=\"button button-secondary\" data-ajax-action><i class=\"fa fa-fw fa-tasks\"></i> <span>";
        echo twig_escape_filter($this->env, $this->env->getExtension('GantryTwig')->transFilter("GANTRY5_PLATFORM_RECOMPILE_CSS"), "html", null, true);
        echo "</span></a>
            <button type=\"submit\" class=\"button button-primary button-save\" data-save=\"";
        // line 11
        echo twig_escape_filter($this->env, $this->env->getExtension('GantryTwig')->transFilter("GANTRY5_PLATFORM_STYLES"), "html", null, true);
        echo "\"><i class=\"fa fa-fw fa-check\"></i> <span>";
        echo twig_escape_filter($this->env, $this->env->getExtension('GantryTwig')->transFilter("GANTRY5_PLATFORM_SAVE_STYLES"), "html", null, true);
        echo "</span></button>
        </span>

        ";
        // line 14
        $context["presets"] = $this->getAttribute($this->getAttribute((isset($context["gantry"]) ? $context["gantry"] : null), "theme", array()), "presets", array());
        // line 15
        echo "        ";
        if ($this->getAttribute((isset($context["presets"]) ? $context["presets"] : null), "count", array(), "method")) {
            // line 16
            echo "        ";
            $context["collapsed"] = $this->getAttribute((isset($context["stored_data"]) ? $context["stored_data"] : null), "swatches");
            // line 17
            echo "        <h2 class=\"page-title";
            echo (((isset($context["collapsed"]) ? $context["collapsed"] : null)) ? (" g-collapsed-main") : (""));
            echo "\" data-g-collapse=\"";
            echo twig_escape_filter($this->env, twig_jsonencode_filter(twig_array_merge((isset($context["labels"]) ? $context["labels"] : null), array("collapsed" => (((isset($context["collapsed"]) ? $context["collapsed"] : null)) ? (true) : (false)), "id" => "swatches", "target" => "~ .swatches-container"))), "html_attr");
            echo "\" data-g-collapse-id=\"swatches\">
            <span class=\"title\">";
            // line 18
            echo twig_escape_filter($this->env, $this->env->getExtension('GantryTwig')->transFilter("GANTRY5_PLATFORM_STYLES"), "html", null, true);
            echo "</span>
            <span class=\"g-collapse g-tooltip\" data-title=\"";
            // line 19
            echo twig_escape_filter($this->env, (((isset($context["collapsed"]) ? $context["collapsed"] : null)) ? ($this->getAttribute((isset($context["labels"]) ? $context["labels"] : null), "expand", array())) : ($this->getAttribute((isset($context["labels"]) ? $context["labels"] : null), "collapse", array()))), "html", null, true);
            echo "\"><i class=\"fa fa-fw  fa-caret-up\"></i></span>
        </h2>

        <div class=\"swatches-container";
            // line 22
            echo (((isset($context["collapsed"]) ? $context["collapsed"] : null)) ? (" g-collapsed") : (""));
            echo "\">
            <div class=\"swatches-block\">
                ";
            // line 24
            $context["presetKey"] = $this->getAttribute($this->getAttribute((isset($context["gantry"]) ? $context["gantry"] : null), "config", array()), "get", array(0 => "styles.preset"), "method");
            // line 25
            echo "
                <ul class=\"g-grid\">
                    ";
            // line 27
            $context['_parent'] = (array) $context;
            $context['_seq'] = twig_ensure_traversable((isset($context["presets"]) ? $context["presets"] : null));
            foreach ($context['_seq'] as $context["key"] => $context["preset"]) {
                // line 28
                echo "                        ";
                $context["presetKey"] = (( !(isset($context["presetKey"]) ? $context["presetKey"] : null)) ? ($context["key"]) : ((isset($context["presetKey"]) ? $context["presetKey"] : null)));
                // line 29
                echo "                        ";
                $context["counter"] = 0;
                // line 30
                echo "                        <li class=\"g-block";
                echo ((((isset($context["presetKey"]) ? $context["presetKey"] : null) == $context["key"])) ? (" g-preset-match") : (""));
                echo "\">
                            <a href=\"#\" class=\"swatch\" data-g-styles=\"";
                // line 31
                echo twig_escape_filter($this->env, twig_jsonencode_filter($this->getAttribute($this->getAttribute((isset($context["presets"]) ? $context["presets"] : null), "def", array(0 => ($context["key"] . ".styles.preset"), 1 => $context["key"]), "method"), "flatten", array(0 => ($context["key"] . ".styles"), 1 => "][", 2 => "styles"), "method")), "html_attr");
                echo "\">
                                <img src=\"";
                // line 32
                echo twig_escape_filter($this->env, _twig_default_filter($this->env->getExtension('GantryTwig')->urlFunc($this->getAttribute($context["preset"], "image", array())), $this->env->getExtension('GantryTwig')->urlFunc("gantry-admin://images/placeholder.png")));
                echo "\" class=\"swatch-image\" alt=\"";
                echo twig_escape_filter($this->env, $this->env->getExtension('GantryTwig')->transFilter("GANTRY5_PLATFORM_STYLES_APPLY"), "html", null, true);
                echo " ";
                echo twig_escape_filter($this->env, $this->getAttribute($context["preset"], "description", array()), "html", null, true);
                echo "\"/>
                                ";
                // line 33
                if (twig_length_filter($this->env, $this->getAttribute($context["preset"], "colors", array()))) {
                    // line 34
                    echo "                                    ";
                    $context["stop"] = twig_number_format_filter($this->env, (100 / twig_length_filter($this->env, $this->getAttribute($context["preset"], "colors", array()))), 3, ".");
                    // line 35
                    echo "                                    <span class=\"swatch-colors\"
                                            ";
                    // line 37
                    echo "                                          style=\"background: linear-gradient(to right
                                          ";
                    // line 38
                    $context['_parent'] = (array) $context;
                    $context['_seq'] = twig_ensure_traversable($this->getAttribute($context["preset"], "colors", array()));
                    foreach ($context['_seq'] as $context["_key"] => $context["color"]) {
                        // line 39
                        echo ",";
                        echo twig_escape_filter($this->env, $context["color"], "html", null, true);
                        echo " ";
                        echo twig_escape_filter($this->env, (isset($context["counter"]) ? $context["counter"] : null), "html", null, true);
                        echo "%,";
                        echo twig_escape_filter($this->env, $context["color"], "html", null, true);
                        echo " ";
                        echo twig_escape_filter($this->env, ((isset($context["counter"]) ? $context["counter"] : null) + (isset($context["stop"]) ? $context["stop"] : null)), "html", null, true);
                        echo "%
                                          ";
                        // line 40
                        $context["counter"] = ((isset($context["counter"]) ? $context["counter"] : null) + (isset($context["stop"]) ? $context["stop"] : null));
                    }
                    $_parent = $context['_parent'];
                    unset($context['_seq'], $context['_iterated'], $context['_key'], $context['color'], $context['_parent'], $context['loop']);
                    $context = array_intersect_key($context, $_parent) + $_parent;
                    // line 41
                    echo ")\">
                    </span>
                                ";
                }
                // line 44
                echo "                                <button class=\"swatch-preview\" aria-label=\"";
                echo twig_escape_filter($this->env, $this->env->getExtension('GantryTwig')->transFilter("GANTRY5_PLATFORM_STYLES_PREVIEW"), "html", null, true);
                echo " ";
                echo twig_escape_filter($this->env, $this->getAttribute($context["preset"], "description", array()), "html", null, true);
                echo "\"><i class=\"fa fa-fw fa-eye\"></i></button>
                                <span class=\"swatch-matched\"><i class=\"fa fa-fw fa-star\"></i></span>
                            </a>
                            <span class=\"swatch-description\"><span class=\"swatch-title-matched\"><i class=\"fa fa-fw fa-star\"></i></span> ";
                // line 47
                echo twig_escape_filter($this->env, $this->getAttribute($context["preset"], "description", array()), "html", null, true);
                echo "</span>
                        </li>
                    ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['key'], $context['preset'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 50
            echo "                </ul>
            </div>
        </div>

        <input type=\"hidden\" name=\"styles[preset]\" value=\"";
            // line 54
            echo twig_escape_filter($this->env, (isset($context["presetKey"]) ? $context["presetKey"] : null), "html", null, true);
            echo "\" />
        ";
        }
        // line 56
        echo "
        ";
        // line 57
        $context['_parent'] = (array) $context;
        $context['_seq'] = twig_ensure_traversable((isset($context["blocks"]) ? $context["blocks"] : null));
        $context['loop'] = array(
          'parent' => $context['_parent'],
          'index0' => 0,
          'index'  => 1,
          'first'  => true,
        );
        if (is_array($context['_seq']) || (is_object($context['_seq']) && $context['_seq'] instanceof Countable)) {
            $length = count($context['_seq']);
            $context['loop']['revindex0'] = $length - 1;
            $context['loop']['revindex'] = $length;
            $context['loop']['length'] = $length;
            $context['loop']['last'] = 1 === $length;
        }
        foreach ($context['_seq'] as $context["group"] => $context["list"]) {
            // line 58
            echo "        <h2>";
            echo twig_escape_filter($this->env, twig_capitalize_string_filter($this->env, $context["group"]), "html", null, true);
            echo " ";
            echo twig_escape_filter($this->env, $this->env->getExtension('GantryTwig')->transFilter("GANTRY5_PLATFORM_STYLES"), "html", null, true);
            echo "</h2>

        <div class=\"g-filter-actions\">
            <div class=\"g-panel-filters\" data-g-global-filter=\"\">
                <div class=\"search settings-block\">
                    <input type=\"text\" data-g-collapse-filter placeholder=\"";
            // line 63
            echo twig_escape_filter($this->env, (($this->env->getExtension('GantryTwig')->transFilter("GANTRY5_PLATFORM_FILTER") . " ") . twig_capitalize_string_filter($this->env, $context["group"])), "html", null, true);
            echo "...\" aria-label=\"";
            echo twig_escape_filter($this->env, (($this->env->getExtension('GantryTwig')->transFilter("GANTRY5_PLATFORM_FILTER") . " ") . twig_capitalize_string_filter($this->env, $context["group"])), "html", null, true);
            echo "...\" role=\"search\">
                    <i class=\"fa fa-fw fa-search\"></i>
                </div>
                <button class=\"button\" type=\"button\" data-g-collapse-all=\"true\"><i class=\"fa fa-fw fa-toggle-up\"></i> ";
            // line 66
            echo twig_escape_filter($this->env, $this->env->getExtension('GantryTwig')->transFilter("GANTRY5_PLATFORM_COLLAPSE_ALL"), "html", null, true);
            echo "</button>
                <button class=\"button\" type=\"button\" data-g-collapse-all=\"false\"><i class=\"fa fa-fw fa-toggle-down\"></i> ";
            // line 67
            echo twig_escape_filter($this->env, $this->env->getExtension('GantryTwig')->transFilter("GANTRY5_PLATFORM_EXPAND_ALL"), "html", null, true);
            echo "</button>
            </div>
        </div>

        <div id=\"styles\" class=\"cards-wrapper g-grid\">

            ";
            // line 73
            $context['_parent'] = (array) $context;
            $context['_seq'] = twig_ensure_traversable($context["list"]);
            $context['loop'] = array(
              'parent' => $context['_parent'],
              'index0' => 0,
              'index'  => 1,
              'first'  => true,
            );
            if (is_array($context['_seq']) || (is_object($context['_seq']) && $context['_seq'] instanceof Countable)) {
                $length = count($context['_seq']);
                $context['loop']['revindex0'] = $length - 1;
                $context['loop']['revindex'] = $length;
                $context['loop']['length'] = $length;
                $context['loop']['last'] = 1 === $length;
            }
            foreach ($context['_seq'] as $context["id"] => $context["block"]) {
                // line 74
                echo "                ";
                $context["prefix"] = (("styles." . $context["id"]) . ".");
                // line 75
                echo "                ";
                $context["collapsed"] = ($this->getAttribute($this->getAttribute($context["block"], "form", array()), "collapsed", array()) || $this->getAttribute((isset($context["stored_data"]) ? $context["stored_data"] : null), (isset($context["prefix"]) ? $context["prefix"] : null)));
                // line 76
                echo "                <div class=\"card settings-block";
                echo (((isset($context["collapsed"]) ? $context["collapsed"] : null)) ? (" g-collapsed") : (""));
                echo "\">
                    <h4 data-g-collapse=\"";
                // line 77
                echo twig_escape_filter($this->env, twig_jsonencode_filter(twig_array_merge((isset($context["labels"]) ? $context["labels"] : null), array("collapsed" => (((isset($context["collapsed"]) ? $context["collapsed"] : null)) ? (true) : (false)), "id" => (isset($context["prefix"]) ? $context["prefix"] : null), "target" => "~ .inner-params"))), "html_attr");
                echo "\" data-g-collapse-id=\"";
                echo twig_escape_filter($this->env, (isset($context["prefix"]) ? $context["prefix"] : null), "html", null, true);
                echo "\">
                        <span class=\"g-collapse g-tooltip\" data-title=\"";
                // line 78
                echo twig_escape_filter($this->env, (((isset($context["collapsed"]) ? $context["collapsed"] : null)) ? ($this->getAttribute((isset($context["labels"]) ? $context["labels"] : null), "expand", array())) : ($this->getAttribute((isset($context["labels"]) ? $context["labels"] : null), "collapse", array()))), "html", null, true);
                echo "\"><i class=\"fa fa-fw  fa-caret-up\"></i></span>
                        <span class=\"g-title\">";
                // line 79
                echo twig_escape_filter($this->env, $this->getAttribute($context["block"], "name", array()), "html", null, true);
                echo "</span>
                    </h4>
                    <div class=\"inner-params\">
                        ";
                // line 82
                $this->loadTemplate("forms/fields.html.twig", "@gantry-admin/pages/configurations/styles/styles.html.twig", 82)->display(array_merge($context, array("overrideable" => (isset($context["overrideable"]) ? $context["overrideable"] : null), "blueprints" => $this->getAttribute($context["block"], "form", array()), "data" => $this->getAttribute((isset($context["gantry"]) ? $context["gantry"] : null), "config", array()))));
                // line 83
                echo "                    </div>
                </div>
            ";
                ++$context['loop']['index0'];
                ++$context['loop']['index'];
                $context['loop']['first'] = false;
                if (isset($context['loop']['length'])) {
                    --$context['loop']['revindex0'];
                    --$context['loop']['revindex'];
                    $context['loop']['last'] = 0 === $context['loop']['revindex0'];
                }
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['id'], $context['block'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 86
            echo "        </div>
        ";
            ++$context['loop']['index0'];
            ++$context['loop']['index'];
            $context['loop']['first'] = false;
            if (isset($context['loop']['length'])) {
                --$context['loop']['revindex0'];
                --$context['loop']['revindex'];
                $context['loop']['last'] = 0 === $context['loop']['revindex0'];
            }
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['group'], $context['list'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 88
        echo "
        <div class=\"g-footer-actions\">
            <span class=\"float-right\">
                <a href=\"";
        // line 91
        echo twig_escape_filter($this->env, $this->getAttribute((isset($context["gantry"]) ? $context["gantry"] : null), "route", array(0 => "configurations", 1 => (isset($context["configuration"]) ? $context["configuration"] : null), 2 => "styles/compile"), "method"), "html", null, true);
        echo "\" role=\"button\" title=\"";
        echo twig_escape_filter($this->env, $this->env->getExtension('GantryTwig')->transFilter("GANTRY5_PLATFORM_RECOMPILE_CSS"), "html", null, true);
        echo "\" aria-label=\"";
        echo twig_escape_filter($this->env, $this->env->getExtension('GantryTwig')->transFilter("GANTRY5_PLATFORM_RECOMPILE_CSS"), "html", null, true);
        echo "\" class=\"button button-secondary\" data-ajax-action><i class=\"fa fa-fw fa-tasks\"></i> <span>";
        echo twig_escape_filter($this->env, $this->env->getExtension('GantryTwig')->transFilter("GANTRY5_PLATFORM_RECOMPILE_CSS"), "html", null, true);
        echo "</span></a>
                <button type=\"submit\" class=\"button button-primary button-save\" data-save=\"";
        // line 92
        echo twig_escape_filter($this->env, $this->env->getExtension('GantryTwig')->transFilter("GANTRY5_PLATFORM_STYLES"), "html", null, true);
        echo "\"><i class=\"fa fa-fw fa-check\"></i> <span>";
        echo twig_escape_filter($this->env, $this->env->getExtension('GantryTwig')->transFilter("GANTRY5_PLATFORM_SAVE_STYLES"), "html", null, true);
        echo "</span></button>
            </span>
        </div>
    </form>
</div>
";
    }

    public function getTemplateName()
    {
        return "@gantry-admin/pages/configurations/styles/styles.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  335 => 92,  325 => 91,  320 => 88,  305 => 86,  289 => 83,  287 => 82,  281 => 79,  277 => 78,  271 => 77,  266 => 76,  263 => 75,  260 => 74,  243 => 73,  234 => 67,  230 => 66,  222 => 63,  211 => 58,  194 => 57,  191 => 56,  186 => 54,  180 => 50,  171 => 47,  162 => 44,  157 => 41,  151 => 40,  140 => 39,  136 => 38,  133 => 37,  130 => 35,  127 => 34,  125 => 33,  117 => 32,  113 => 31,  108 => 30,  105 => 29,  102 => 28,  98 => 27,  94 => 25,  92 => 24,  87 => 22,  81 => 19,  77 => 18,  70 => 17,  67 => 16,  64 => 15,  62 => 14,  54 => 11,  44 => 10,  38 => 8,  36 => 7,  32 => 5,  30 => 4,  27 => 3,  18 => 1,);
    }
}
