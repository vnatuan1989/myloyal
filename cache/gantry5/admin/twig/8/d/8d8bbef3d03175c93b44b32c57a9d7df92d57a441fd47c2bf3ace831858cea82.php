<?php

/* forms/fields/menu/list.html.twig */
class __TwigTemplate_8d8bbef3d03175c93b44b32c57a9d7df92d57a441fd47c2bf3ace831858cea82 extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        // line 1
        $this->parent = $this->loadTemplate("forms/fields/select/selectize.html.twig", "forms/fields/menu/list.html.twig", 1);
        $this->blocks = array(
            'options' => array($this, 'block_options'),
        );
    }

    protected function doGetParent(array $context)
    {
        return "forms/fields/select/selectize.html.twig";
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        $this->parent->display($context, array_merge($this->blocks, $blocks));
    }

    // line 3
    public function block_options($context, array $blocks = array())
    {
        // line 4
        echo "    ";
        $this->displayParentBlock("options", $context, $blocks);
        echo "
    ";
        // line 5
        $context["current"] = $this->getAttribute($this->getAttribute((isset($context["gantry"]) ? $context["gantry"] : null), "menu", array()), "getDefaultMenuName", array(), "method");
        // line 6
        echo "    ";
        $context['_parent'] = (array) $context;
        $context['_seq'] = twig_ensure_traversable($this->getAttribute($this->getAttribute((isset($context["gantry"]) ? $context["gantry"] : null), "menu", array()), "getMenus", array(), "method"));
        foreach ($context['_seq'] as $context["_key"] => $context["key"]) {
            // line 7
            echo "        ";
            $context["text"] = twig_capitalize_string_filter($this->env, $context["key"]);
            // line 8
            echo "        <option
                ";
            // line 10
            echo "                ";
            if (($context["key"] == (isset($context["value"]) ? $context["value"] : null))) {
                echo "selected=\"selected\"";
            }
            // line 11
            echo "                value=\"";
            echo twig_escape_filter($this->env, $context["key"]);
            echo "\"
                ";
            // line 13
            echo "                ";
            if (twig_in_filter($this->getAttribute($this->getAttribute((isset($context["field"]) ? $context["field"] : null), "options", array()), "disabled", array()), array(0 => "on", 1 => "true", 2 => 1))) {
                echo "disabled=\"disabled\"";
            }
            // line 14
            echo "                >";
            echo twig_escape_filter($this->env, (isset($context["text"]) ? $context["text"] : null));
            echo (((((isset($context["current"]) ? $context["current"] : null) == $context["key"]) && $this->getAttribute($this->getAttribute((isset($context["gantry"]) ? $context["gantry"] : null), "menu", array()), "hasDefaultMenu", array(), "method"))) ? (" ★") : (""));
            echo "</option>
    ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['key'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
    }

    public function getTemplateName()
    {
        return "forms/fields/menu/list.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  64 => 14,  59 => 13,  54 => 11,  49 => 10,  46 => 8,  43 => 7,  38 => 6,  36 => 5,  31 => 4,  28 => 3,  11 => 1,);
    }
}
