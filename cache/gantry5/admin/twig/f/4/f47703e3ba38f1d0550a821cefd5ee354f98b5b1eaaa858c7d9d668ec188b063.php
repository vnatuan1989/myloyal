<?php

/* @gantry-admin//pages/menu/edit.html.twig */
class __TwigTemplate_f47703e3ba38f1d0550a821cefd5ee354f98b5b1eaaa858c7d9d668ec188b063 extends Twig_Template
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
        return $this->loadTemplate(((((isset($context["ajax"]) ? $context["ajax"] : null) - (isset($context["suffix"]) ? $context["suffix"] : null))) ? ("@gantry-admin/partials/ajax.html.twig") : ("@gantry-admin/partials/base.html.twig")), "@gantry-admin//pages/menu/edit.html.twig", 1);
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        $this->getParent($context)->display($context, array_merge($this->blocks, $blocks));
    }

    // line 3
    public function block_gantry($context, array $blocks = array())
    {
        // line 4
        echo "<form method=\"post\" action=\"";
        echo twig_escape_filter($this->env, $this->getAttribute((isset($context["gantry"]) ? $context["gantry"] : null), "route", array(0 => "menu/edit", 1 => (isset($context["id"]) ? $context["id"] : null), 2 => "validate"), "method"), "html", null, true);
        echo "\">
    <div class=\"card settings-block\">
        <h4>
            <span data-title-editable=\"";
        // line 7
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute((isset($context["data"]) ? $context["data"] : null), "settings", array()), "title", array()), "html", null, true);
        echo "\" class=\"title\">";
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute((isset($context["data"]) ? $context["data"] : null), "settings", array()), "title", array()), "html", null, true);
        echo "</span> <i class=\"fa fa-pencil font-small\" tabindex=\"0\" aria-label=\"";
        echo twig_escape_filter($this->env, strtr($this->env->getExtension('GantryTwig')->transFilter("GANTRY5_PLATFORM_EDIT_TITLE"), array("%s" => $this->getAttribute($this->getAttribute((isset($context["data"]) ? $context["data"] : null), "settings", array()), "title", array()))), "html", null, true);
        echo "\" data-title-edit></i>
            ";
        // line 8
        if ($this->getAttribute($this->getAttribute($this->getAttribute((isset($context["blueprints"]) ? $context["blueprints"] : null), "form", array()), "fields", array()), "enabled", array())) {
            // line 9
            echo "            ";
            $this->loadTemplate("forms/fields/enable/enable.html.twig", "@gantry-admin//pages/menu/edit.html.twig", 9)->display(array_merge($context, array("default" => true, "name" => "enabled", "field" => $this->getAttribute($this->getAttribute($this->getAttribute((isset($context["blueprints"]) ? $context["blueprints"] : null), "form", array()), "fields", array()), "enabled", array()), "value" => $this->getAttribute((isset($context["data"]) ? $context["data"] : null), "enabled", array()))));
            // line 10
            echo "            ";
        }
        // line 11
        echo "        </h4>
        <div class=\"inner-params\">
            ";
        // line 13
        $this->loadTemplate("forms/fields.html.twig", "@gantry-admin//pages/menu/edit.html.twig", 13)->display(array_merge($context, array("blueprints" => $this->getAttribute((isset($context["blueprints"]) ? $context["blueprints"] : null), "form", array()), "data" => (isset($context["data"]) ? $context["data"] : null), "skip" => array(0 => "enabled", 1 => "settings.title"))));
        // line 14
        echo "        </div>
    </div>
    <div class=\"g-modal-actions\">
        ";
        // line 18
        echo "        <button class=\"button button-primary\" type=\"submit\">";
        echo twig_escape_filter($this->env, $this->env->getExtension('GantryTwig')->transFilter("GANTRY5_PLATFORM_APPLY"), "html", null, true);
        echo "</button>
        <button class=\"button button-primary\" data-apply-and-save>";
        // line 19
        echo twig_escape_filter($this->env, $this->env->getExtension('GantryTwig')->transFilter("GANTRY5_PLATFORM_APPLY_SAVE"), "html", null, true);
        echo "</button>
        <button class=\"button g5-dialog-close\">";
        // line 20
        echo twig_escape_filter($this->env, $this->env->getExtension('GantryTwig')->transFilter("GANTRY5_PLATFORM_CANCEL"), "html", null, true);
        echo "</button>
    </div>
</form>
";
    }

    public function getTemplateName()
    {
        return "@gantry-admin//pages/menu/edit.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  73 => 20,  69 => 19,  64 => 18,  59 => 14,  57 => 13,  53 => 11,  50 => 10,  47 => 9,  45 => 8,  37 => 7,  30 => 4,  27 => 3,  18 => 1,);
    }
}
