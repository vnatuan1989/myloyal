<?php

/* menu/list.html.twig */
class __TwigTemplate_ec494da728e4e0c5bcb5f11afcbff35199a3732d7ff56e240bac92ef2970555e extends Twig_Template
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
        $context["children"] = ((($this->getAttribute((isset($context["item"]) ? $context["item"] : null), "level", array()) == 1)) ? ($this->getAttribute((isset($context["item"]) ? $context["item"] : null), "group", array(0 => (isset($context["group"]) ? $context["group"] : null)), "method")) : ($this->getAttribute((isset($context["item"]) ? $context["item"] : null), "children", array())));
        // line 2
        echo "
<ul class=\"submenu-items\" data-mm-base=\"";
        // line 3
        echo twig_escape_filter($this->env, $this->getAttribute((isset($context["item"]) ? $context["item"] : null), "path", array()), "html", null, true);
        echo "\" data-mm-base-level=\"";
        echo twig_escape_filter($this->env, $this->getAttribute((isset($context["item"]) ? $context["item"] : null), "level", array()), "html", null, true);
        echo "\">";
        // line 4
        if (($this->getAttribute((isset($context["item"]) ? $context["item"] : null), "level", array()) > 1)) {
            // line 5
            echo "        <li>
            <a class=\"menu-item\" data-g5-ajaxify=\"\" data-g5-ajaxify-params=\"";
            // line 6
            echo twig_escape_filter($this->env, twig_jsonencode_filter(array("inline" => 1, "group" => (isset($context["group"]) ? $context["group"] : null))), "html_attr");
            echo "\" data-g5-ajaxify-target-parent=\".submenu-column\" href=\"";
            echo twig_escape_filter($this->env, $this->getAttribute((isset($context["gantry"]) ? $context["gantry"] : null), "route", array(0 => "menu", 1 => (isset($context["id"]) ? $context["id"] : null), 2 => $this->getAttribute($this->getAttribute((isset($context["item"]) ? $context["item"] : null), "parent", array()), "path", array())), "method"), "html", null, true);
            echo "\">
                ";
            // line 7
            $context['_parent'] = (array) $context;
            $context['_seq'] = twig_ensure_traversable(range(1, ($this->getAttribute((isset($context["item"]) ? $context["item"] : null), "level", array()) - 1)));
            foreach ($context['_seq'] as $context["_key"] => $context["i"]) {
                // line 8
                echo "                <i class=\"fa fa-fw fa-chevron-left\"></i> &nbsp;
                ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['i'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 10
            echo "            </a>
        </li>
    ";
        }
        // line 13
        $context['_parent'] = (array) $context;
        $context['_seq'] = twig_ensure_traversable((isset($context["children"]) ? $context["children"] : null));
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
        foreach ($context['_seq'] as $context["_key"] => $context["child"]) {
            // line 14
            echo "        <li data-mm-id=\"";
            echo twig_escape_filter($this->env, $this->getAttribute($context["child"], "path", array()), "html", null, true);
            echo "\" data-mm-level=\"";
            echo twig_escape_filter($this->env, $this->getAttribute($context["child"], "level", array()), "html", null, true);
            echo "\"";
            if ((($this->getAttribute($context["child"], "type", array()) == "particle") || ($this->getAttribute($context["child"], "type", array()) == "module"))) {
                echo " class=\"g-menu-item-";
                echo twig_escape_filter($this->env, $this->getAttribute($context["child"], "type", array()), "html", null, true);
                echo "\" data-mm-original-type=\"";
                echo twig_escape_filter($this->env, $this->getAttribute($context["child"], "type", array()), "html", null, true);
                echo "\"";
            }
            echo ">
            ";
            // line 15
            $this->loadTemplate("menu/item.html.twig", "menu/list.html.twig", 15)->display(array_merge($context, array("item" => $context["child"], "target" => ("list-" . (isset($context["group"]) ? $context["group"] : null)))));
            // line 16
            echo "        </li>
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
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['child'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 18
        echo "</ul>
<span class=\"submenu-reorder\"><i class=\"fa fa-fw fa-arrows-h\"></i></span>
";
    }

    public function getTemplateName()
    {
        return "menu/list.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  105 => 18,  90 => 16,  88 => 15,  73 => 14,  56 => 13,  51 => 10,  44 => 8,  40 => 7,  34 => 6,  31 => 5,  29 => 4,  24 => 3,  21 => 2,  19 => 1,);
    }
}
