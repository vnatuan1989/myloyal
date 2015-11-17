<?php

/* partials/error_head.html.twig */
class __TwigTemplate_e7b2ca529cf53da90273337a1f2a980cb88d62455c700bb0c05b684c247b21fd extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        // line 1
        $this->parent = $this->loadTemplate("partials/page_head.html.twig", "partials/error_head.html.twig", 1);
        $this->blocks = array(
            'head_application' => array($this, 'block_head_application'),
        );
    }

    protected function doGetParent(array $context)
    {
        return "partials/page_head.html.twig";
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        $this->parent->display($context, array_merge($this->blocks, $blocks));
    }

    // line 3
    public function block_head_application($context, array $blocks = array())
    {
        // line 4
        echo "<meta http-equiv=\"content-type\" content=\"text/html; charset=utf-8\" />
    <title>";
        // line 5
        echo twig_escape_filter($this->env, ((array_key_exists("errorcode", $context)) ? (_twig_default_filter((isset($context["errorcode"]) ? $context["errorcode"] : null), 500)) : (500)), "html", null, true);
        echo " ";
        echo twig_escape_filter($this->env, ((array_key_exists("error", $context)) ? (_twig_default_filter((isset($context["error"]) ? $context["error"] : null), $this->env->getExtension('GantryTwig')->transFilter("GANTRY5_ENGINE_UNKNOWN_ERROR"))) : ($this->env->getExtension('GantryTwig')->transFilter("GANTRY5_ENGINE_UNKNOWN_ERROR"))), "html", null, true);
        echo "</title>
    ";
        // line 6
        echo twig_join_filter($this->getAttribute((isset($context["gantry"]) ? $context["gantry"] : null), "styles", array(0 => "head", 1 => true), "method"), "
    ");
        echo "
    ";
        // line 7
        echo twig_join_filter($this->getAttribute((isset($context["gantry"]) ? $context["gantry"] : null), "scripts", array(0 => "head", 1 => true), "method"), "
    ");
    }

    public function getTemplateName()
    {
        return "partials/error_head.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  45 => 7,  40 => 6,  34 => 5,  31 => 4,  28 => 3,  11 => 1,);
    }
}
