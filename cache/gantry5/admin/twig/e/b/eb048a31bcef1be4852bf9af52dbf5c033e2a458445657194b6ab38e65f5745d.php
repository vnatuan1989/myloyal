<?php

/* @gantry-admin/ajax/confirm-deletion.html.twig */
class __TwigTemplate_eb048a31bcef1be4852bf9af52dbf5c033e2a458445657194b6ab38e65f5745d extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        $this->parent = false;

        $this->blocks = array(
        );
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        // line 1
        echo "<div class=\"card settings-block\">
    <h4 id=\"g-modal-labelledby\">";
        // line 2
        echo twig_escape_filter($this->env, $this->env->getExtension('GantryTwig')->transFilter("GANTRY5_PLATFORM_DELETE_OUTLINE"), "html", null, true);
        echo "</h4>
    <div class=\"inner-params\" id=\"g-modal-describedby\">
        ";
        // line 4
        echo twig_escape_filter($this->env, $this->env->getExtension('GantryTwig')->transFilter("GANTRY5_PLATFORM_DELETE_OUTLINE_DESC"), "html", null, true);
        echo "
    </div>
</div>

<div class=\"g-modal-actions\">
    <button tabindex=\"0\" class=\"button button-primary\" role=\"button\" aria-label=\"";
        // line 9
        echo twig_escape_filter($this->env, $this->env->getExtension('GantryTwig')->transFilter("GANTRY5_PLATFORM_CONFIRM"), "html", null, true);
        echo "\" data-g-delete-confirm>";
        echo twig_escape_filter($this->env, $this->env->getExtension('GantryTwig')->transFilter("GANTRY5_PLATFORM_CONFIRM"), "html", null, true);
        echo "</button>
    <button tabindex=\"0\" class=\"button g5-dialog-close\" role=\"button\" aria-label=\"";
        // line 10
        echo twig_escape_filter($this->env, $this->env->getExtension('GantryTwig')->transFilter("GANTRY5_PLATFORM_CANCEL"), "html", null, true);
        echo "\" data-g-delete-cancel>";
        echo twig_escape_filter($this->env, $this->env->getExtension('GantryTwig')->transFilter("GANTRY5_PLATFORM_CANCEL"), "html", null, true);
        echo "</button>
</div>
";
    }

    public function getTemplateName()
    {
        return "@gantry-admin/ajax/confirm-deletion.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  41 => 10,  35 => 9,  27 => 4,  22 => 2,  19 => 1,);
    }
}
