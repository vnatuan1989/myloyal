<?php

/* @gantry-admin/ajax/unsaved.html.twig */
class __TwigTemplate_87f8c02abf67df65b3edead321dc6b2651298b7c58531607909be2db030fd731 extends Twig_Template
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
        echo twig_escape_filter($this->env, $this->env->getExtension('GantryTwig')->transFilter("GANTRY5_PLATFORM_UNSAVED"), "html", null, true);
        echo "</h4>
    <div id=\"g-modal-describedby\" class=\"inner-params\">
        ";
        // line 4
        echo twig_escape_filter($this->env, $this->env->getExtension('GantryTwig')->transFilter("GANTRY5_PLATFORM_UNSAVED_DESC"), "html", null, true);
        echo "
    </div>
</div>

<div class=\"g-modal-actions\">
    <button tabindex=\"0\" class=\"button button-primary\" role=\"button\" data-g-unsaved-save>";
        // line 9
        echo twig_escape_filter($this->env, $this->env->getExtension('GantryTwig')->transFilter("GANTRY5_PLATFORM_UNSAVED_SAVE"), "html", null, true);
        echo "</button>
    <button tabindex=\"0\" class=\"button g5-dialog-close\" role=\"button\" data-g-unsaved-discard>";
        // line 10
        echo twig_escape_filter($this->env, $this->env->getExtension('GantryTwig')->transFilter("GANTRY5_PLATFORM_UNSAVED_DISCARD"), "html", null, true);
        echo "</button>
    <button tabindex=\"0\" class=\"button g5-dialog-close\" role=\"button\" data-g-unsaved-stay>";
        // line 11
        echo twig_escape_filter($this->env, $this->env->getExtension('GantryTwig')->transFilter("GANTRY5_PLATFORM_UNSAVED_STAY"), "html", null, true);
        echo "</button>
</div>
";
    }

    public function getTemplateName()
    {
        return "@gantry-admin/ajax/unsaved.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  43 => 11,  39 => 10,  35 => 9,  27 => 4,  22 => 2,  19 => 1,);
    }
}
