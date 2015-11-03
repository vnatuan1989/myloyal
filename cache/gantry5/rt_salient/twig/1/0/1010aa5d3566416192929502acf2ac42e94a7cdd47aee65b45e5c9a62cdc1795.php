<?php

/* @particles/promoimage.html.twig */
class __TwigTemplate_1010aa5d3566416192929502acf2ac42e94a7cdd47aee65b45e5c9a62cdc1795 extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        // line 1
        $this->parent = $this->loadTemplate("@nucleus/partials/particle.html.twig", "@particles/promoimage.html.twig", 1);
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
\t<div class=\"g-promoimage ";
        // line 7
        echo twig_escape_filter($this->env, $this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "class", array()));
        echo "\">
\t    <figure class=\"g-promoimage-effect\">
\t    \t<span class=\"g-promoimage-iconbutton ";
        // line 9
        echo twig_escape_filter($this->env, $this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "iconbutton", array()));
        echo "\"></span>
\t        <img src=\"";
        // line 10
        echo twig_escape_filter($this->env, $this->env->getExtension('GantryTwig')->urlFunc($this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "image", array())));
        echo "\" alt=\"";
        echo twig_escape_filter($this->env, $this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "title", array()));
        echo "\">
\t        <div class=\"g-promoimage-caption\">
\t            ";
        // line 12
        if ($this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "promoimagetitle", array())) {
            echo "<div class=\"g-promoimage-title\">";
            echo $this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "promoimagetitle", array());
            echo "</div>";
        }
        // line 13
        echo "\t            <div class=\"g-promoimage-icon\">
\t\t\t\t\t";
        // line 14
        $context['_parent'] = (array) $context;
        $context['_seq'] = twig_ensure_traversable($this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "promoimageicons", array()));
        foreach ($context['_seq'] as $context["_key"] => $context["promoimageicon"]) {
            // line 15
            echo "\t\t\t\t\t    <a href=\"";
            echo twig_escape_filter($this->env, $this->getAttribute($context["promoimageicon"], "link", array()), "html", null, true);
            echo "\"><span class=\"";
            echo twig_escape_filter($this->env, $this->getAttribute($context["promoimageicon"], "icon", array()), "html", null, true);
            echo "\"></span></a>
\t\t\t\t\t";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['promoimageicon'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 16
        echo "  \t                
\t            </div>
\t            ";
        // line 18
        if ($this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "desc", array())) {
            echo "<div class=\"g-promoimage-desc\">";
            echo $this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "desc", array());
            echo "</div>";
        }
        // line 19
        echo "\t        </div>           
\t    </figure>
\t</div>

";
    }

    public function getTemplateName()
    {
        return "@particles/promoimage.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  93 => 19,  87 => 18,  83 => 16,  72 => 15,  68 => 14,  65 => 13,  59 => 12,  52 => 10,  48 => 9,  43 => 7,  40 => 6,  34 => 5,  31 => 4,  28 => 3,  11 => 1,);
    }
}
