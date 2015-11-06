<?php

/* @gantry-admin/pages/configurations/layouts/container.html.twig */
class __TwigTemplate_7b1b58637457b5d58a43c1f01477bceda505cc6eda0f155a47ef65e0bcdccff4 extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        $this->blocks = array(
            'gantry' => array($this, 'block_gantry'),
        );
    }

    protected function doGetParent(array $context)
    {
        // line 1
        return $this->loadTemplate(((((isset($context["ajax"]) ? $context["ajax"] : null) - (isset($context["suffix"]) ? $context["suffix"] : null))) ? ("@gantry-admin/partials/ajax.html.twig") : ("@gantry-admin/partials/base.html.twig")), "@gantry-admin/pages/configurations/layouts/container.html.twig", 1);
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        $this->getParent($context)->display($context, array_merge($this->blocks, $blocks));
    }

    // line 3
    public function block_gantry($context, array $blocks = array())
    {
        // line 4
        echo "    <form method=\"post\" action=\"";
        echo twig_escape_filter($this->env, $this->getAttribute((isset($context["gantry"]) ? $context["gantry"] : null), "route", array(0 => (isset($context["action"]) ? $context["action"] : null)), "method"), "html", null, true);
        echo "\">
        <div class=\"card settings-block\">
            <h4>
                ";
        // line 7
        echo twig_escape_filter($this->env, trim($this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "name", array())));
        echo "
            </h4>

            <div class=\"inner-params\">
                ";
        // line 11
        $this->loadTemplate("forms/fields.html.twig", "@gantry-admin/pages/configurations/layouts/container.html.twig", 11)->display(array_merge($context, array("overridable" => true, "blueprints" => $this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "form", array()))));
        // line 12
        echo "            </div>
        </div>

        <div class=\"g-modal-actions\">
            <button class=\"button button-primary\" type=\"submit\">";
        // line 16
        echo twig_escape_filter($this->env, $this->env->getExtension('GantryTwig')->transFilter("GANTRY5_PLATFORM_APPLY"), "html", null, true);
        echo "</button>
            <button class=\"button button-primary\" data-apply-and-save>";
        // line 17
        echo twig_escape_filter($this->env, $this->env->getExtension('GantryTwig')->transFilter("GANTRY5_PLATFORM_APPLY_SAVE"), "html", null, true);
        echo "</button>
            <button class=\"button g5-dialog-close\">";
        // line 18
        echo twig_escape_filter($this->env, $this->env->getExtension('GantryTwig')->transFilter("GANTRY5_PLATFORM_CANCEL"), "html", null, true);
        echo "</button>
        </div>
    </form>
";
    }

    public function getTemplateName()
    {
        return "@gantry-admin/pages/configurations/layouts/container.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  60 => 18,  56 => 17,  52 => 16,  46 => 12,  44 => 11,  37 => 7,  30 => 4,  27 => 3,  18 => 1,);
    }
}
