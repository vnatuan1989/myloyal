<?php

/* menu/item.html.twig */
class __TwigTemplate_d0a5fd4c2fae85bad1d7da680c8410f6b28ff7e3d7a07e8bcd147cbcf1fe49cd extends Twig_Template
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
        $context["ajaxTarget"] = ((($this->getAttribute((isset($context["item"]) ? $context["item"] : null), "level", array()) > 1)) ? ("data-g5-ajaxify-target-parent=\".submenu-column\"") : ("data-g5-ajaxify-target=\"[data-g5-menu-columns]\""));
        // line 2
        echo "
";
        // line 3
        $context["attributes"] = (((((("data-g5-ajaxify=\"\" data-g5-ajaxify-params=\"" . twig_escape_filter($this->env, "{\"inline\":1}", "html_attr")) . "\" ") . (isset($context["ajaxTarget"]) ? $context["ajaxTarget"] : null)) . " href=\"") . twig_escape_filter($this->env, $this->getAttribute((isset($context["gantry"]) ? $context["gantry"] : null), "route", array(0 => "menu", 1 => (isset($context["id"]) ? $context["id"] : null), 2 => $this->getAttribute((isset($context["item"]) ? $context["item"] : null), "path", array())), "method"))) . "\"");
        // line 4
        echo "
<a ";
        // line 5
        echo (isset($context["attributes"]) ? $context["attributes"] : null);
        echo " class=\"menu-item\">
";
        // line 6
        if (($this->getAttribute((isset($context["item"]) ? $context["item"] : null), "type", array()) == "particle")) {
            // line 7
            echo "    <span class=\"menu-item-content\">
        <span class=\"menu-item-title\">";
            // line 8
            echo twig_escape_filter($this->env, $this->getAttribute((isset($context["item"]) ? $context["item"] : null), "title", array()));
            echo "</span>
        ";
            // line 9
            if ($this->getAttribute((isset($context["item"]) ? $context["item"] : null), "subtitle", array())) {
                echo "<span class=\"menu-item-subtitle\">";
                echo twig_escape_filter($this->env, $this->getAttribute((isset($context["item"]) ? $context["item"] : null), "subtitle", array()));
                echo "</span>";
            }
            // line 10
            echo "    </span>
    <span class=\"badge menu-item-type\">";
            // line 11
            echo twig_escape_filter($this->env, $this->getAttribute((isset($context["item"]) ? $context["item"] : null), "particle", array()));
            echo "</span>
";
        } else {
            // line 13
            echo "    ";
            if ($this->getAttribute((isset($context["item"]) ? $context["item"] : null), "image", array())) {
                // line 14
                echo "        <img src=\"";
                echo twig_escape_filter($this->env, $this->env->getExtension('GantryTwig')->urlFunc($this->getAttribute((isset($context["item"]) ? $context["item"] : null), "image", array())));
                echo "\" />
    ";
            } elseif ($this->getAttribute(            // line 15
(isset($context["item"]) ? $context["item"] : null), "icon", array())) {
                // line 16
                echo "        <i class=\"";
                echo twig_escape_filter($this->env, $this->getAttribute((isset($context["item"]) ? $context["item"] : null), "icon", array()));
                echo "\"></i>
    ";
            }
            // line 18
            echo "    ";
            if (( !$this->getAttribute((isset($context["item"]) ? $context["item"] : null), "icon_only", array()) ||  !($this->getAttribute((isset($context["item"]) ? $context["item"] : null), "image", array()) || $this->getAttribute((isset($context["item"]) ? $context["item"] : null), "icon", array())))) {
                // line 19
                echo "        <span class=\"menu-item-content\">
            <span class=\"menu-item-title\">";
                // line 20
                echo twig_escape_filter($this->env, $this->getAttribute((isset($context["item"]) ? $context["item"] : null), "title", array()));
                echo "</span>
                ";
                // line 21
                if ($this->getAttribute((isset($context["item"]) ? $context["item"] : null), "subtitle", array())) {
                    echo "<span class=\"menu-item-subtitle\">";
                    echo twig_escape_filter($this->env, $this->getAttribute((isset($context["item"]) ? $context["item"] : null), "subtitle", array()));
                    echo "</span>";
                }
                // line 22
                echo "        </span>
    ";
            }
            // line 24
            echo "    ";
            if ($this->getAttribute((isset($context["item"]) ? $context["item"] : null), "children", array())) {
                // line 25
                echo "<span class=\"parent-indicator\"></span>";
            }
        }
        // line 28
        echo "</a>
<a class=\"config-cog\" href=\"";
        // line 29
        echo ((($this->getAttribute((isset($context["item"]) ? $context["item"] : null), "type", array()) == "particle")) ? (twig_escape_filter($this->env, $this->getAttribute((isset($context["gantry"]) ? $context["gantry"] : null), "route", array(0 => "menu/particle"), "method"))) : (twig_escape_filter($this->env, $this->getAttribute((isset($context["gantry"]) ? $context["gantry"] : null), "route", array(0 => "menu/edit", 1 => (isset($context["id"]) ? $context["id"] : null), 2 => $this->getAttribute((isset($context["item"]) ? $context["item"] : null), "path", array())), "method"))));
        echo "\">
    <i aria-label=\"Menu Item Settings\" class=\"fa fa-cog\"></i>
</a>
";
    }

    public function getTemplateName()
    {
        return "menu/item.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  102 => 29,  99 => 28,  95 => 25,  92 => 24,  88 => 22,  82 => 21,  78 => 20,  75 => 19,  72 => 18,  66 => 16,  64 => 15,  59 => 14,  56 => 13,  51 => 11,  48 => 10,  42 => 9,  38 => 8,  35 => 7,  33 => 6,  29 => 5,  26 => 4,  24 => 3,  21 => 2,  19 => 1,);
    }
}
