<?php

/* @particles/custom.html.twig */
class __TwigTemplate_143ab2d7cf345b905549cadceeb1abf03b628bb56a04c61f07653af0d87283a6 extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        // line 1
        $this->parent = $this->loadTemplate("@nucleus/partials/particle.html.twig", "@particles/custom.html.twig", 1);
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
        echo $this->env->getExtension('GantryTwig')->htmlFilter((($this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "filter", array())) ? ($this->getAttribute($this->getAttribute((isset($context["gantry"]) ? $context["gantry"] : null), "platform", array()), "filter", array(0 => $this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "html", array())), "method")) : ($this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "html", array()))));
        echo "
";
    }

    public function getTemplateName()
    {
        return "@particles/custom.html.twig";
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
