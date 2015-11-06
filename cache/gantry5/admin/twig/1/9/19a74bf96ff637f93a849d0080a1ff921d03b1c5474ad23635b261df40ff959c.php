<?php

/* @gantry-admin/pages/configurations/settings/field.html.twig */
class __TwigTemplate_19a74bf96ff637f93a849d0080a1ff921d03b1c5474ad23635b261df40ff959c extends Twig_Template
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
        return $this->loadTemplate(((((isset($context["ajax"]) ? $context["ajax"] : null) - (isset($context["suffix"]) ? $context["suffix"] : null))) ? ("@gantry-admin/partials/ajax.html.twig") : ("@gantry-admin/partials/base.html.twig")), "@gantry-admin/pages/configurations/settings/field.html.twig", 1);
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        $this->getParent($context)->display($context, array_merge($this->blocks, $blocks));
    }

    // line 3
    public function block_gantry($context, array $blocks = array())
    {
        // line 4
        $context["action"] = $this->getAttribute((isset($context["gantry"]) ? $context["gantry"] : null), "route", array(0 => ((((isset($context["configuration"]) ? $context["configuration"] : null) . "/") . strtr((isset($context["route"]) ? $context["route"] : null), ".", "/")) . "/validate")), "method");
        // line 5
        echo "<form method=\"post\" action=\"";
        echo twig_escape_filter($this->env, (isset($context["action"]) ? $context["action"] : null));
        echo "\">
    ";
        // line 6
        if (($this->getAttribute((isset($context["blueprints"]) ? $context["blueprints"] : null), "type", array()) == "collection.list")) {
            // line 7
            echo "        ";
            $this->loadTemplate("forms/fields.html.twig", "@gantry-admin/pages/configurations/settings/field.html.twig", 7)->display($context);
            // line 8
            echo "    ";
        } else {
            // line 9
            echo "        <div class=\"card settings-block\">
            <h4>
                ";
            // line 11
            if ((isset($context["title"]) ? $context["title"] : null)) {
                // line 12
                echo "                    <span data-title-editable=\"";
                echo twig_escape_filter($this->env, trim($this->getAttribute($this->getAttribute((isset($context["data"]) ? $context["data"] : null), "data", array()), (isset($context["title"]) ? $context["title"] : null), array(), "array")));
                echo "\" data-collection-key=\"";
                echo twig_escape_filter($this->env, $this->env->getExtension('GantryTwig')->fieldNameFilter(((isset($context["prefix"]) ? $context["prefix"] : null) . (isset($context["title"]) ? $context["title"] : null))), "html", null, true);
                echo "\" class=\"title\">
                        ";
                // line 13
                echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute((isset($context["data"]) ? $context["data"] : null), "data", array()), (isset($context["title"]) ? $context["title"] : null), array(), "array"));
                echo "
                    </span>
                    <i class=\"fa fa-pencil font-small\" tabindex=\"0\" aria-label=\"";
                // line 15
                echo twig_escape_filter($this->env, strtr($this->env->getExtension('GantryTwig')->transFilter("GANTRY5_PLATFORM_EDIT_TITLE"), array("%s" => twig_escape_filter($this->env, trim($this->getAttribute($this->getAttribute((isset($context["data"]) ? $context["data"] : null), "data", array()), (isset($context["title"]) ? $context["title"] : null), array(), "array"))))), "html", null, true);
                echo "\" data-title-edit=\"\"></i>
                ";
            } else {
                // line 17
                echo "                ";
                echo twig_escape_filter($this->env, $this->env->getExtension('GantryTwig')->transFilter("GANTRY5_PLATFORM_EDIT"), "html", null, true);
                echo "
                ";
            }
            // line 19
            echo "            </h4>
            <div class=\"inner-params\">
                ";
            // line 21
            $this->loadTemplate("forms/fields.html.twig", "@gantry-admin/pages/configurations/settings/field.html.twig", 21)->display(array_merge($context, array("skip" => array(0 => (isset($context["title"]) ? $context["title"] : null)))));
            // line 22
            echo "            </div>
        </div>
    ";
        }
        // line 25
        echo "    <div class=\"g-modal-actions\">
        <button class=\"button button-primary\" type=\"submit\">";
        // line 26
        echo twig_escape_filter($this->env, $this->env->getExtension('GantryTwig')->transFilter("GANTRY5_PLATFORM_APPLY"), "html", null, true);
        echo "</button>
        <button class=\"button button-primary\" data-apply-and-save>";
        // line 27
        echo twig_escape_filter($this->env, $this->env->getExtension('GantryTwig')->transFilter("GANTRY5_PLATFORM_APPLY_SAVE"), "html", null, true);
        echo "</button>
        <button class=\"button g5-dialog-close\">";
        // line 28
        echo twig_escape_filter($this->env, $this->env->getExtension('GantryTwig')->transFilter("GANTRY5_PLATFORM_CANCEL"), "html", null, true);
        echo "</button>
    </div>
</form>
";
    }

    public function getTemplateName()
    {
        return "@gantry-admin/pages/configurations/settings/field.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  96 => 28,  92 => 27,  88 => 26,  85 => 25,  80 => 22,  78 => 21,  74 => 19,  68 => 17,  63 => 15,  58 => 13,  51 => 12,  49 => 11,  45 => 9,  42 => 8,  39 => 7,  37 => 6,  32 => 5,  30 => 4,  27 => 3,  18 => 1,);
    }
}
