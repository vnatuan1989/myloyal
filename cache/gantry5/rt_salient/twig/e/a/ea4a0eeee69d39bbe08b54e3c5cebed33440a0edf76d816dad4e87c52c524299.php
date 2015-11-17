<?php

/* @particles/position.html.twig */
class __TwigTemplate_ea4a0eeee69d39bbe08b54e3c5cebed33440a0edf76d816dad4e87c52c524299 extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        // line 1
        $this->parent = $this->loadTemplate("@nucleus/partials/particle.html.twig", "@particles/position.html.twig", 1);
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
        echo "    ";
        echo $this->getAttribute($this->getAttribute((isset($context["gantry"]) ? $context["gantry"] : null), "platform", array()), "displayModules", array(0 => $this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "key", array()), 1 => array("style" => (($this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "chrome", array(), "any", true, true)) ? (_twig_default_filter($this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "chrome", array()), "gantry")) : ("gantry")))), "method");
        echo "
";
    }

    public function getTemplateName()
    {
        return "@particles/position.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  31 => 4,  28 => 3,  11 => 1,);
    }
}
