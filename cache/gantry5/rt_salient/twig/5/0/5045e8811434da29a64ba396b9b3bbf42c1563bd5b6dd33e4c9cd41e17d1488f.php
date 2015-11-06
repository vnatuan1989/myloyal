<?php

/* @particles/animatedblock.html.twig */
class __TwigTemplate_5045e8811434da29a64ba396b9b3bbf42c1563bd5b6dd33e4c9cd41e17d1488f extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        // line 1
        $this->parent = $this->loadTemplate("@nucleus/partials/particle.html.twig", "@particles/animatedblock.html.twig", 1);
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
\t<div class=\"g-animatedblock ";
        // line 7
        echo twig_escape_filter($this->env, $this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "class", array()));
        echo "\">
\t\t<div class=\"g-animatedblock-animated ";
        // line 8
        echo twig_escape_filter($this->env, $this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "bgclass", array()));
        echo " ";
        echo twig_escape_filter($this->env, $this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "animationclass", array()));
        echo "\">
\t\t\t";
        // line 9
        if ($this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "image", array())) {
            // line 10
            echo "\t\t\t<img src=\"";
            echo twig_escape_filter($this->env, $this->env->getExtension('GantryTwig')->urlFunc($this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "image", array())));
            echo "\" alt=\"image\" />
\t\t\t";
        }
        // line 12
        echo "\t\t\t";
        if ($this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "headline", array())) {
            // line 13
            echo "\t\t\t<div class=\"g-animatedblock-title\">
\t\t\t\t<span>";
            // line 14
            echo twig_escape_filter($this->env, $this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "headline", array()));
            echo "</span>
\t\t\t</div>
\t\t\t";
        }
        // line 17
        echo "\t\t\t";
        if (($this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "desc", array()) || $this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "readmore", array()))) {
            // line 18
            echo "\t\t\t<div class=\"g-animatedblock-desc\">
\t\t\t\t<span>";
            // line 19
            echo twig_escape_filter($this->env, $this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "desc", array()));
            echo "</span>
\t\t\t\t";
            // line 20
            if ($this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "readmore", array())) {
                // line 21
                echo "\t\t\t\t<a href=\"";
                echo twig_escape_filter($this->env, $this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "link", array()));
                echo "\"><span class=\"g-animatedblock-readmore\">";
                echo $this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "readmore", array());
                echo "</span></a>
\t\t\t\t";
            }
            // line 23
            echo "\t\t\t</div>
\t\t\t";
        }
        // line 25
        echo "\t\t\t";
        if ($this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "button", array())) {
            // line 26
            echo "\t\t\t<div class=\"g-animatedblock-button\">
\t\t\t\t<a href=\"";
            // line 27
            echo twig_escape_filter($this->env, $this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "link", array()));
            echo "\" class=\"button ";
            echo twig_escape_filter($this->env, $this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "buttonclass", array()));
            echo "\">";
            echo twig_escape_filter($this->env, $this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "button", array()));
            echo "</a>
\t\t\t</div>
\t\t\t";
        }
        // line 30
        echo "\t\t</div>
\t</div>
";
    }

    public function getTemplateName()
    {
        return "@particles/animatedblock.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  113 => 30,  103 => 27,  100 => 26,  97 => 25,  93 => 23,  85 => 21,  83 => 20,  79 => 19,  76 => 18,  73 => 17,  67 => 14,  64 => 13,  61 => 12,  55 => 10,  53 => 9,  47 => 8,  43 => 7,  40 => 6,  34 => 5,  31 => 4,  28 => 3,  11 => 1,);
    }
}
