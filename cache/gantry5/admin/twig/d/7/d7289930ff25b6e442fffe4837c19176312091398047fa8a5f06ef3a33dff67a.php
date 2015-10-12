<?php

/* @gantry-admin/layouts/switcher.html.twig */
class __TwigTemplate_d7289930ff25b6e442fffe4837c19176312091398047fa8a5f06ef3a33dff67a extends Twig_Template
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
        echo "
<div class=\"g-tabs\" role=\"tablist\">
    <ul>
        <li class=\"active\"><a href=\"#\" id=\"g-switcher-platforms-tab\" role=\"presentation\" aria-controls=\"g-switcher-platforms\" role=\"tab\" aria-expanded=\"true\">";
        // line 4
        echo twig_escape_filter($this->env, $this->env->getExtension('GantryTwig')->transFilter("GANTRY5_PLATFORM_PRESETS"), "html", null, true);
        echo "</a></li>
        <li><a href=\"#\" id=\"g-switcher-platforms-outlines\" role=\"presentation\" aria-controls=\"g-switcher-outlines\" role=\"tab\" aria-expanded=\"false\">";
        // line 5
        echo twig_escape_filter($this->env, $this->env->getExtension('GantryTwig')->transFilter("GANTRY5_PLATFORM_OUTLINES"), "html", null, true);
        echo "</a></li>
    </ul>
</div>

<div class=\"g-panes\">
    <div class=\"g-pane clearfix active\" role=\"tabpanel\" id=\"g-switcher-platforms\" aria-labelledby=\"g-switcher-platforms-tab\" aria-expanded=\"true\">
        <div class=\"g-preserve-particles\">
            <label>
                <input data-g-preserve=\"preset\" type=\"checkbox\" checked=\"checked\" />
                ";
        // line 14
        echo twig_escape_filter($this->env, $this->env->getExtension('GantryTwig')->transFilter("GANTRY5_PLATFORM_SWITCH_PRESET_DESC"), "html", null, true);
        echo "
            </label>
        </div>

        ";
        // line 18
        $context['_parent'] = (array) $context;
        $context['_seq'] = twig_ensure_traversable((isset($context["presets"]) ? $context["presets"] : null));
        foreach ($context['_seq'] as $context["name"] => $context["group"]) {
            // line 19
            echo "        <ul class=\"g-switch-presets";
            if (($context["name"] == "user")) {
                echo " float-left";
            } else {
                echo " float-right";
            }
            echo "\" role=\"tablist\">
            <li tabindex=\"0\" class=\"g-switch-title\" role=\"presentation\">";
            // line 20
            echo ((($context["name"] == "user")) ? ("User") : ("Platform"));
            echo "</li>
            ";
            // line 21
            $context['_parent'] = (array) $context;
            $context['_seq'] = twig_ensure_traversable($context["group"]);
            foreach ($context['_seq'] as $context["key"] => $context["current"]) {
                // line 22
                echo "            <li tabindex=\"0\" aria-label=\"";
                echo twig_escape_filter($this->env, $context["current"]);
                echo " Preset\" role=\"button\" data-switch=\"";
                echo twig_escape_filter($this->env, $this->getAttribute((isset($context["gantry"]) ? $context["gantry"] : null), "route", array(0 => ((("configurations/" . (isset($context["configuration"]) ? $context["configuration"] : null)) . "/layout/preset/") . $context["key"])), "method"), "html", null, true);
                echo "\" class=\"g-switch-preset\">";
                echo twig_escape_filter($this->env, $context["current"]);
                echo "</li>
            ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['key'], $context['current'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 24
            echo "        </ul>
        ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['name'], $context['group'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 26
        echo "    </div>

    <div class=\"g-pane clearfix\" role=\"tabpanel\" id=\"g-switcher-outlines\" aria-labelledby=\"g-switcher-outlines-tab\" aria-expanded=\"false\">
        ";
        // line 29
        $context["user_conf"] = $this->getAttribute($this->getAttribute($this->getAttribute((isset($context["gantry"]) ? $context["gantry"] : null), "configurations", array()), "copy", array()), "user", array());
        // line 30
        echo "        ";
        $context["system_conf"] = $this->getAttribute($this->getAttribute((isset($context["gantry"]) ? $context["gantry"] : null), "configurations", array()), "system", array());
        // line 31
        echo "
        <div class=\"g-preserve-particles\">
            <label>
                <input data-g-preserve=\"outline\" type=\"checkbox\" checked=\"checked\" />
                ";
        // line 35
        echo twig_escape_filter($this->env, $this->env->getExtension('GantryTwig')->transFilter("GANTRY5_PLATFORM_SWITCH_OUTLINE_DESC"), "html", null, true);
        echo "
            </label>
        </div>
        <ul class=\"g-switch-conf-user";
        // line 38
        if ($this->getAttribute((isset($context["system_conf"]) ? $context["system_conf"] : null), "count", array())) {
            echo " float-left";
        }
        echo "\" role=\"tablist\">
            <li  tabindex=\"0\" class=\"g-switch-title\" role=\"presentation\">User</li>
            ";
        // line 40
        $context['_parent'] = (array) $context;
        $context['_seq'] = twig_ensure_traversable((isset($context["user_conf"]) ? $context["user_conf"] : null));
        foreach ($context['_seq'] as $context["key"] => $context["current"]) {
            // line 41
            echo "                ";
            $context["label"] = twig_escape_filter($this->env, twig_capitalize_string_filter($this->env, trim(strtr($context["current"], "_", " "))));
            // line 42
            echo "                <li tabindex=\"0\" aria-label=\"";
            echo twig_escape_filter($this->env, (isset($context["label"]) ? $context["label"] : null), "html", null, true);
            echo " Outline\" role=\"button\" data-switch=\"";
            echo twig_escape_filter($this->env, $this->getAttribute((isset($context["gantry"]) ? $context["gantry"] : null), "route", array(0 => ((("configurations/" . (isset($context["configuration"]) ? $context["configuration"] : null)) . "/layout/switch/") . $context["key"])), "method"), "html", null, true);
            echo "\" class=\"g-switch-configuration\">";
            echo twig_escape_filter($this->env, (isset($context["label"]) ? $context["label"] : null), "html", null, true);
            echo "</li>
            ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['key'], $context['current'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 44
        echo "        </ul>

        ";
        // line 46
        if ($this->getAttribute((isset($context["system_conf"]) ? $context["system_conf"] : null), "count", array())) {
            // line 47
            echo "            <ul class=\"g-switch-conf-systems float-right\">
                <li tabindex=\"0\" class=\"g-switch-title\" role=\"presentation\">System</li>
                ";
            // line 49
            $context['_parent'] = (array) $context;
            $context['_seq'] = twig_ensure_traversable((isset($context["system_conf"]) ? $context["system_conf"] : null));
            foreach ($context['_seq'] as $context["key"] => $context["current"]) {
                // line 50
                echo "                    ";
                $context["label"] = twig_escape_filter($this->env, twig_capitalize_string_filter($this->env, trim(strtr($context["current"], "_", " "))));
                // line 51
                echo "                    <li tabindex=\"0\" aria-label=\"";
                echo twig_escape_filter($this->env, (isset($context["label"]) ? $context["label"] : null), "html", null, true);
                echo " Outline\" role=\"button\" data-switch=\"";
                echo twig_escape_filter($this->env, $this->getAttribute((isset($context["gantry"]) ? $context["gantry"] : null), "route", array(0 => ((("configurations/" . (isset($context["configuration"]) ? $context["configuration"] : null)) . "/layout/switch/") . $context["key"])), "method"), "html", null, true);
                echo "\" class=\"g-switch-configuration\">";
                echo twig_escape_filter($this->env, (isset($context["label"]) ? $context["label"] : null), "html", null, true);
                echo "</li>
                ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['key'], $context['current'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 53
            echo "            </ul>
        ";
        }
        // line 55
        echo "    </div>
</div>
";
    }

    public function getTemplateName()
    {
        return "@gantry-admin/layouts/switcher.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  171 => 55,  167 => 53,  154 => 51,  151 => 50,  147 => 49,  143 => 47,  141 => 46,  137 => 44,  124 => 42,  121 => 41,  117 => 40,  110 => 38,  104 => 35,  98 => 31,  95 => 30,  93 => 29,  88 => 26,  81 => 24,  68 => 22,  64 => 21,  60 => 20,  51 => 19,  47 => 18,  40 => 14,  28 => 5,  24 => 4,  19 => 1,);
    }
}
