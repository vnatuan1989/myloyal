<?php

/* error.html.twig */
class __TwigTemplate_07bd2c96b45eafc2d4ed5f8ae13985eb5067c20e13f7cf6b21bfb3da865ce538 extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        // line 1
        $this->parent = $this->loadTemplate("partials/page.html.twig", "error.html.twig", 1);
        $this->blocks = array(
            'page_head' => array($this, 'block_page_head'),
            'content' => array($this, 'block_content'),
        );
    }

    protected function doGetParent(array $context)
    {
        return "partials/page.html.twig";
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        $this->parent->display($context, array_merge($this->blocks, $blocks));
    }

    // line 3
    public function block_page_head($context, array $blocks = array())
    {
        // line 4
        $this->loadTemplate("partials/error_head.html.twig", "error.html.twig", 4)->display($context);
    }

    // line 7
    public function block_content($context, array $blocks = array())
    {
        // line 8
        echo "    <h1>";
        echo twig_escape_filter($this->env, ((array_key_exists("errorcode", $context)) ? (_twig_default_filter((isset($context["errorcode"]) ? $context["errorcode"] : null), 500)) : (500)), "html", null, true);
        echo " ";
        echo twig_escape_filter($this->env, ((array_key_exists("error", $context)) ? (_twig_default_filter((isset($context["error"]) ? $context["error"] : null), "Unknown Error")) : ("Unknown Error")), "html", null, true);
        echo "</h1>
    ";
        // line 9
        echo (isset($context["backtrace"]) ? $context["backtrace"] : null);
        echo "
";
    }

    public function getTemplateName()
    {
        return "error.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  46 => 9,  39 => 8,  36 => 7,  32 => 4,  29 => 3,  11 => 1,);
    }
}
