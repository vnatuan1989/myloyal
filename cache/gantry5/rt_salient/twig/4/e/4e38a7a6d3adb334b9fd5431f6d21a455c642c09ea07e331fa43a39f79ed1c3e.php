<?php

/* @particles/contact.html.twig */
class __TwigTemplate_4e38a7a6d3adb334b9fd5431f6d21a455c642c09ea07e331fa43a39f79ed1c3e extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        // line 1
        $this->parent = $this->loadTemplate("@nucleus/partials/particle.html.twig", "@particles/contact.html.twig", 1);
        $this->blocks = array(
            'particle' => array($this, 'block_particle'),
        );
    }

    protected function doGetParent(array $context)
    {
        return "@nucleus/partials/particle.html.twig";
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        $this->parent->display($context, array_merge($this->blocks, $blocks));
    }

    // line 3
    public function block_particle($context, array $blocks = array())
    {
        // line 4
        echo "
\t";
        // line 5
        if ($this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "title", array())) {
            echo "<h2 class=\"g-title\">";
            echo $this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "title", array());
            echo "</h2>";
        }
        // line 6
        echo "
\t<div class=\"g-contact ";
        // line 7
        echo twig_escape_filter($this->env, $this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "class", array()));
        echo "\">
\t\t";
        // line 8
        ob_start();
        // line 9
        echo "\t\t\t";
        $context['_parent'] = (array) $context;
        $context['_seq'] = twig_ensure_traversable($this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "maps", array()));
        foreach ($context['_seq'] as $context["_key"] => $context["map"]) {
            // line 10
            echo "\t\t\t<div class=\"g-contact-map\" style=\"background: url('";
            echo twig_escape_filter($this->env, $this->env->getExtension('GantryTwig')->urlFunc($this->getAttribute($context["map"], "img", array())));
            echo "') no-repeat; min-height: ";
            echo twig_escape_filter($this->env, $this->getAttribute($context["map"], "height", array()));
            echo "\">
\t\t\t\t";
            // line 11
            if ($this->getAttribute($context["map"], "overlay", array())) {
                // line 12
                echo "\t\t\t\t<div class=\"g-contact-map-overlay\"></div>
\t\t\t\t";
            }
            // line 14
            echo "\t\t\t\t";
            if ($this->getAttribute($context["map"], "marker", array())) {
                // line 15
                echo "\t\t\t\t<div class=\"g-contact-map-marker\" style=\"top: ";
                echo twig_escape_filter($this->env, $this->getAttribute($context["map"], "top", array()));
                echo ";left: ";
                echo twig_escape_filter($this->env, $this->getAttribute($context["map"], "left", array()));
                echo "\">
\t\t\t\t\t<i class=\"";
                // line 16
                echo twig_escape_filter($this->env, $this->getAttribute($context["map"], "icon", array()));
                echo "\"></i>
\t\t\t\t</div>
\t\t\t\t";
            }
            // line 19
            echo "\t\t\t</div>
\t\t\t";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['map'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 21
        echo "\t\t";
        $context["contactmap"] = ('' === $tmp = ob_get_clean()) ? '' : new Twig_Markup($tmp, $this->env->getCharset());
        // line 22
        echo "\t\t
\t\t";
        // line 23
        if (($this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "mapposition", array()) == "top")) {
            // line 24
            echo "\t\t\t";
            echo twig_escape_filter($this->env, (isset($context["contactmap"]) ? $context["contactmap"] : null), "html", null, true);
            echo "
\t\t";
        }
        // line 26
        echo "\t\t
\t\t";
        // line 27
        $context['_parent'] = (array) $context;
        $context['_seq'] = twig_ensure_traversable($this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "contactitems", array()));
        foreach ($context['_seq'] as $context["_key"] => $context["contactitem"]) {
            // line 28
            echo "\t\t<div class=\"g-contact-item\">
\t\t\t";
            // line 29
            if ($this->getAttribute($context["contactitem"], "icon", array())) {
                echo "<div class=\"g-contact-icon\"><span class=\"";
                echo twig_escape_filter($this->env, $this->getAttribute($context["contactitem"], "icon", array()), "html", null, true);
                echo "\"></span></div>";
            }
            // line 30
            echo "\t\t\t";
            if ($this->getAttribute($context["contactitem"], "label", array())) {
                echo "<div class=\"g-contact-label\">";
                echo $this->getAttribute($context["contactitem"], "label", array());
                echo "</div>";
            }
            // line 31
            echo "\t\t\t";
            if ($this->getAttribute($context["contactitem"], "text", array())) {
                echo "<div class=\"g-contact-text\">";
                echo $this->getAttribute($context["contactitem"], "text", array());
                echo "</div>";
            }
            // line 32
            echo "\t\t</div>
\t\t";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['contactitem'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 34
        echo "\t\t
\t\t";
        // line 35
        if (($this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "mapposition", array()) == "bottom")) {
            // line 36
            echo "\t\t\t";
            echo twig_escape_filter($this->env, (isset($context["contactmap"]) ? $context["contactmap"] : null), "html", null, true);
            echo "
\t\t";
        }
        // line 38
        echo "\t</div>

";
    }

    public function getTemplateName()
    {
        return "@particles/contact.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  152 => 38,  146 => 36,  144 => 35,  141 => 34,  134 => 32,  127 => 31,  120 => 30,  114 => 29,  111 => 28,  107 => 27,  104 => 26,  98 => 24,  96 => 23,  93 => 22,  90 => 21,  83 => 19,  77 => 16,  70 => 15,  67 => 14,  63 => 12,  61 => 11,  54 => 10,  49 => 9,  47 => 8,  43 => 7,  40 => 6,  34 => 5,  31 => 4,  28 => 3,  11 => 1,);
    }
}
