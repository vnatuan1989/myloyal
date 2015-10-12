<?php

/* @gantry-admin/pages/menu/menuitem.html.twig */
class __TwigTemplate_f133b9f616c592b3b3a7e4d2a8aab08bbc490af064db36a54ba7860d83ccba28 extends Twig_Template
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
        return $this->loadTemplate(((((isset($context["ajax"]) ? $context["ajax"] : null) - (isset($context["suffix"]) ? $context["suffix"] : null))) ? ("@gantry-admin/partials/ajax.html.twig") : ("@gantry-admin/partials/base.html.twig")), "@gantry-admin/pages/menu/menuitem.html.twig", 1);
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
        echo twig_escape_filter($this->env, $this->getAttribute((isset($context["gantry"]) ? $context["gantry"] : null), "route", array(0 => "menu/edit", 1 => (isset($context["id"]) ? $context["id"] : null), 2 => (isset($context["path"]) ? $context["path"] : null), 3 => "validate"), "method"), "html", null, true);
        echo "\">
    <div class=\"card settings-block\">
        <h4>
            <span data-title-editable=\"";
        // line 7
        echo twig_escape_filter($this->env, $this->getAttribute((isset($context["data"]) ? $context["data"] : null), "title", array()), "html", null, true);
        echo "\" class=\"title\">";
        echo twig_escape_filter($this->env, $this->getAttribute((isset($context["data"]) ? $context["data"] : null), "title", array()), "html", null, true);
        echo "</span> <i class=\"fa fa-pencil font-small\" tabindex=\"0\" aria-label=\"";
        echo twig_escape_filter($this->env, strtr($this->env->getExtension('GantryTwig')->transFilter("GANTRY5_PLATFORM_EDIT_TITLE"), array("%s" => $this->getAttribute((isset($context["data"]) ? $context["data"] : null), "title", array()))), "html", null, true);
        echo "\" data-title-edit></i>
            ";
        // line 8
        if ($this->getAttribute($this->getAttribute($this->getAttribute((isset($context["blueprints"]) ? $context["blueprints"] : null), "form", array()), "fields", array()), "enabled", array())) {
            // line 9
            echo "            ";
            $this->loadTemplate("forms/fields/enable/enable.html.twig", "@gantry-admin/pages/menu/menuitem.html.twig", 9)->display(array_merge($context, array("default" => true, "name" => "enabled", "field" => $this->getAttribute($this->getAttribute($this->getAttribute((isset($context["blueprints"]) ? $context["blueprints"] : null), "form", array()), "fields", array()), "enabled", array()), "value" => $this->getAttribute((isset($context["data"]) ? $context["data"] : null), "enabled", array()))));
            // line 10
            echo "            ";
        }
        // line 11
        echo "            <span class=\"g-menuitem-path font-small\">/";
        echo twig_escape_filter($this->env, (isset($context["path"]) ? $context["path"] : null), "html", null, true);
        echo "</span>
        </h4>
        <div class=\"inner-params\">
            ";
        // line 14
        $this->loadTemplate("forms/fields.html.twig", "@gantry-admin/pages/menu/menuitem.html.twig", 14)->display(array_merge($context, array("skip" => array(0 => "enabled", 1 => "title", 2 => ((($this->getAttribute((isset($context["data"]) ? $context["data"] : null), "level", array()) > 1)) ? ("dropdown") : ("-noitem-"))))));
        // line 15
        echo "        </div>
    </div>
    <div class=\"g-modal-actions\">
        ";
        // line 19
        echo "        <button class=\"button button-primary\" type=\"submit\">";
        echo twig_escape_filter($this->env, $this->env->getExtension('GantryTwig')->transFilter("GANTRY5_PLATFORM_APPLY"), "html", null, true);
        echo "</button>
        <button class=\"button button-primary\" data-apply-and-save>";
        // line 20
        echo twig_escape_filter($this->env, $this->env->getExtension('GantryTwig')->transFilter("GANTRY5_PLATFORM_APPLY_SAVE"), "html", null, true);
        echo "</button>
        <button class=\"button g5-dialog-close\">";
        // line 21
        echo twig_escape_filter($this->env, $this->env->getExtension('GantryTwig')->transFilter("GANTRY5_PLATFORM_CANCEL"), "html", null, true);
        echo "</button>
    </div>
</form>
";
    }

    public function getTemplateName()
    {
        return "@gantry-admin/pages/menu/menuitem.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  76 => 21,  72 => 20,  67 => 19,  62 => 15,  60 => 14,  53 => 11,  50 => 10,  47 => 9,  45 => 8,  37 => 7,  30 => 4,  27 => 3,  18 => 1,);
    }
}
