<?php

/* @gantry-admin/partials/updates.html.twig */
class __TwigTemplate_9460b6d56841fdb8f25c5767b58ce61ae14651d03c5e15de316691b5037e1159 extends Twig_Template
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
        $context["updates"] = $this->getAttribute($this->getAttribute((isset($context["gantry"]) ? $context["gantry"] : null), "platform", array()), "updates", array());
        // line 2
        if ((isset($context["updates"]) ? $context["updates"] : null)) {
            // line 3
            $context["version"] = twig_last($this->env, twig_split_filter($this->env, $this->getAttribute((isset($context["updates"]) ? $context["updates"] : null), 0, array()), " "));
            // line 4
            echo "<div class=\"g-grid\">
    <div class=\"g-block\">
        <div class=\"update-header clearfix\">
            <span class=\"update-text\">";
            // line 7
            echo twig_escape_filter($this->env, $this->env->getExtension('GantryTwig')->transFilter("GANTRY5_PLATFORM_UPDATES_AVAILABLE"), "html", null, true);
            echo ": ";
            echo twig_escape_filter($this->env, twig_join_filter((isset($context["updates"]) ? $context["updates"] : null), ", "), "html", null, true);
            echo "</span>
            <div class=\"update-tools\">
                <a href=\"";
            // line 9
            echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute((isset($context["gantry"]) ? $context["gantry"] : null), "platform", array()), "update", array()));
            echo "\" class=\"button button-update\"><i class=\"fa fa-refresh\"></i> <span>";
            echo twig_escape_filter($this->env, $this->env->getExtension('GantryTwig')->transFilter("GANTRY5_PLATFORM_UPDATE"), "html", null, true);
            echo "</span></a>
                <a href=\"#\" data-changelog=\"";
            // line 10
            echo twig_escape_filter($this->env, (isset($context["version"]) ? $context["version"] : null), "html", null, true);
            echo "\" class=\"button button-update\"><i class=\"fa fa-book\"></i> <span>";
            echo twig_escape_filter($this->env, $this->env->getExtension('GantryTwig')->transFilter("GANTRY5_PLATFORM_CHANGELOG"), "html", null, true);
            echo "</span></a>
                <a href=\"#\" class=\"fa fa-close\" data-g-close=\".g-grid\"></a>
            </div>
        </div>
    </div>
</div>
";
        }
    }

    public function getTemplateName()
    {
        return "@gantry-admin/partials/updates.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  43 => 10,  37 => 9,  30 => 7,  25 => 4,  23 => 3,  21 => 2,  19 => 1,);
    }
}
