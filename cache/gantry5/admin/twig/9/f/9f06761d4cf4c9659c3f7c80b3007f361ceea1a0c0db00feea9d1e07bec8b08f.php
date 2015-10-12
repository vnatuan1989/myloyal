<?php

/* partials/configuration-selector.html.twig */
class __TwigTemplate_9f06761d4cf4c9659c3f7c80b3007f361ceea1a0c0db00feea9d1e07bec8b08f extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        $this->parent = false;

        $this->blocks = array(
        );
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        // line 1
        echo "<li class=\"config-select-wrap\">
    ";
        // line 2
        $context["selected_title"] = ((((isset($context["configuration"]) ? $context["configuration"] : null) == "default")) ? ($this->env->getExtension('GantryTwig')->transFilter("GANTRY5_PLATFORM_BASE_OUTLINE")) : (""));
        // line 3
        echo "    ";
        $context["selected_value"] = ((((isset($context["configuration"]) ? $context["configuration"] : null) == "default")) ? ("default") : (""));
        // line 4
        echo "    ";
        $context["selected_editable"] = true;
        // line 5
        echo "    <select id=\"configuration-selector\" class=\"config-select\" data-selectize-ajaxify data-selectize=\"";
        echo twig_escape_filter($this->env, twig_jsonencode_filter(array("allowEmptyOption" => true)), "html_attr");
        echo "\">
        <optgroup label=\"";
        // line 6
        echo twig_escape_filter($this->env, $this->env->getExtension('GantryTwig')->transFilter("GANTRY5_PLATFORM_GLOBAL_DEFAULTS"), "html", null, true);
        echo "\">
            <option value=\"default\"
                ";
        // line 8
        if (((isset($context["configuration"]) ? $context["configuration"] : null) == "default")) {
            echo "selected=\"selected\"";
        }
        // line 9
        echo "                data-data=\"";
        echo twig_escape_filter($this->env, twig_jsonencode_filter(array("params" => array("navbar" => true), "url" => $this->getAttribute((isset($context["gantry"]) ? $context["gantry"] : null), "route", array(0 => "configurations/default", 1 => ((array_key_exists("configuration_page", $context)) ? (_twig_default_filter((isset($context["configuration_page"]) ? $context["configuration_page"] : null), "styles")) : ("styles"))), "method"))), "html_attr");
        echo "\">
                ";
        // line 10
        echo "Base Outline";
        echo "
            </option>
        </optgroup>

        ";
        // line 14
        $context["user_conf"] = $this->getAttribute($this->getAttribute((isset($context["gantry"]) ? $context["gantry"] : null), "configurations", array()), "user", array());
        // line 15
        echo "        ";
        if ($this->getAttribute((isset($context["user_conf"]) ? $context["user_conf"] : null), "count", array())) {
            // line 16
            echo "        <optgroup label=\"";
            echo twig_escape_filter($this->env, $this->env->getExtension('GantryTwig')->transFilter("GANTRY5_PLATFORM_THEME_OUTLINES"), "html", null, true);
            echo "\">
            ";
            // line 17
            $context['_parent'] = (array) $context;
            $context['_seq'] = twig_ensure_traversable((isset($context["user_conf"]) ? $context["user_conf"] : null));
            foreach ($context['_seq'] as $context["name"] => $context["title"]) {
                // line 18
                echo "                ";
                if (($context["name"] == (isset($context["configuration"]) ? $context["configuration"] : null))) {
                    // line 19
                    echo "                    ";
                    $context["selected_title"] = twig_escape_filter($this->env, $context["title"]);
                    // line 20
                    echo "                    ";
                    $context["selected_value"] = twig_escape_filter($this->env, $context["name"]);
                    // line 21
                    echo "                ";
                }
                // line 22
                echo "            <option value=\"";
                echo twig_escape_filter($this->env, $context["name"]);
                echo "\"
                        ";
                // line 23
                if (($context["name"] == (isset($context["configuration"]) ? $context["configuration"] : null))) {
                    echo "selected=\"selected\"";
                }
                // line 24
                echo "                        data-data=\"";
                echo twig_escape_filter($this->env, twig_jsonencode_filter(array("params" => array("navbar" => true), "url" => $this->getAttribute((isset($context["gantry"]) ? $context["gantry"] : null), "route", array(0 => "configurations", 1 => twig_escape_filter($this->env, $context["name"]), 2 => ((array_key_exists("configuration_page", $context)) ? (_twig_default_filter((isset($context["configuration_page"]) ? $context["configuration_page"] : null), "styles")) : ("styles"))), "method"))), "html_attr");
                echo "\">
                    ";
                // line 25
                echo twig_escape_filter($this->env, $context["title"]);
                echo "
                </option>
            ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['name'], $context['title'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 28
            echo "        </optgroup>
        ";
        }
        // line 30
        echo "
        ";
        // line 31
        $context["system_conf"] = $this->getAttribute($this->getAttribute((isset($context["gantry"]) ? $context["gantry"] : null), "configurations", array()), "system", array());
        // line 32
        echo "        ";
        if ($this->getAttribute((isset($context["system_conf"]) ? $context["system_conf"] : null), "count", array())) {
            // line 33
            echo "        <optgroup label=\"";
            echo twig_escape_filter($this->env, $this->env->getExtension('GantryTwig')->transFilter("GANTRY5_PLATFORM_SYSTEM_OUTLINES"), "html", null, true);
            echo "\">
            ";
            // line 34
            $context['_parent'] = (array) $context;
            $context['_seq'] = twig_ensure_traversable((isset($context["system_conf"]) ? $context["system_conf"] : null));
            foreach ($context['_seq'] as $context["name"] => $context["title"]) {
                // line 35
                echo "                ";
                if (($context["name"] == (isset($context["configuration"]) ? $context["configuration"] : null))) {
                    // line 36
                    echo "                    ";
                    $context["selected_title"] = twig_escape_filter($this->env, $context["title"]);
                    // line 37
                    echo "                    ";
                    $context["selected_value"] = twig_escape_filter($this->env, $context["name"]);
                    // line 38
                    echo "                    ";
                    $context["selected_editable"] = false;
                    // line 39
                    echo "                ";
                }
                // line 40
                echo "                <option value=\"";
                echo twig_escape_filter($this->env, $context["name"]);
                echo "\"
                        ";
                // line 41
                if (($context["name"] == (isset($context["configuration"]) ? $context["configuration"] : null))) {
                    echo "selected=\"selected\"";
                }
                // line 42
                echo "                        data-data=\"";
                echo twig_escape_filter($this->env, twig_jsonencode_filter(array("params" => array("navbar" => true), "url" => $this->getAttribute((isset($context["gantry"]) ? $context["gantry"] : null), "route", array(0 => "configurations", 1 => twig_escape_filter($this->env, $context["name"]), 2 => ((array_key_exists("configuration_page", $context)) ? (_twig_default_filter((isset($context["configuration_page"]) ? $context["configuration_page"] : null), "styles")) : ("styles"))), "method"))), "html_attr");
                echo "\">
                    ";
                // line 43
                echo twig_escape_filter($this->env, $context["title"]);
                echo "
                </option>
            ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['name'], $context['title'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 46
            echo "        </optgroup>
        ";
        }
        // line 48
        echo "    </select>
    ";
        // line 49
        if ((isset($context["selected_editable"]) ? $context["selected_editable"] : null)) {
            // line 50
            echo "    <span data-title-editable=\"";
            echo twig_escape_filter($this->env, (isset($context["selected_title"]) ? $context["selected_title"] : null), "html", null, true);
            echo "\" data-g-config-href=\"";
            echo twig_escape_filter($this->env, $this->getAttribute((isset($context["gantry"]) ? $context["gantry"] : null), "route", array(0 => "configurations", 1 => (isset($context["selected_value"]) ? $context["selected_value"] : null), 2 => "rename"), "method"));
            echo "\" class=\"title g-conf-title-edit\">";
            echo twig_escape_filter($this->env, (isset($context["selected_title"]) ? $context["selected_title"] : null), "html", null, true);
            echo "</span> <i class=\"fa fa-pencil font-small\" tabindex=\"0\" aria-label=\"";
            echo twig_escape_filter($this->env, strtr($this->env->getExtension('GantryTwig')->transFilter("GANTRY5_PLATFORM_EDIT_TITLE"), array("%s" => (isset($context["selected_title"]) ? $context["selected_title"] : null))), "html", null, true);
            echo "\"  data-title-editable=\"";
            echo twig_escape_filter($this->env, (isset($context["selected_title"]) ? $context["selected_title"] : null), "html", null, true);
            echo "\" data-title-edit=\"\"></i>
    ";
        }
        // line 52
        echo "</li>
";
    }

    public function getTemplateName()
    {
        return "partials/configuration-selector.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  187 => 52,  173 => 50,  171 => 49,  168 => 48,  164 => 46,  155 => 43,  150 => 42,  146 => 41,  141 => 40,  138 => 39,  135 => 38,  132 => 37,  129 => 36,  126 => 35,  122 => 34,  117 => 33,  114 => 32,  112 => 31,  109 => 30,  105 => 28,  96 => 25,  91 => 24,  87 => 23,  82 => 22,  79 => 21,  76 => 20,  73 => 19,  70 => 18,  66 => 17,  61 => 16,  58 => 15,  56 => 14,  49 => 10,  44 => 9,  40 => 8,  35 => 6,  30 => 5,  27 => 4,  24 => 3,  22 => 2,  19 => 1,);
    }
}
