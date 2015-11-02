<?php

/* @gantry-admin/pages/themes/themes.html.twig */
class __TwigTemplate_6d9b6a8d967b47baa160ee20e306d1bb4e05910845d45f72fa317cb9654cc1a1 extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        $this->blocks = array(
            'content' => array($this, 'block_content'),
            'gantry' => array($this, 'block_gantry'),
            'footer_section' => array($this, 'block_footer_section'),
        );
    }

    protected function doGetParent(array $context)
    {
        // line 1
        return $this->loadTemplate(((((isset($context["ajax"]) ? $context["ajax"] : null) - (isset($context["suffix"]) ? $context["suffix"] : null))) ? ("@gantry-admin/partials/ajax.html.twig") : ("@gantry-admin/partials/base.html.twig")), "@gantry-admin/pages/themes/themes.html.twig", 1);
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        // line 3
        $context["settings_url"] = $this->getAttribute($this->getAttribute((isset($context["gantry"]) ? $context["gantry"] : null), "platform", array()), "settings", array());
        // line 4
        $context["settings_key"] = $this->getAttribute($this->getAttribute((isset($context["gantry"]) ? $context["gantry"] : null), "platform", array()), "settings_key", array());
        // line 1
        $this->getParent($context)->display($context, array_merge($this->blocks, $blocks));
    }

    // line 6
    public function block_content($context, array $blocks = array())
    {
        // line 7
        echo "    <div id=\"g5-container\" class=\"g-container\">
        <div class=\"inner-container\">
            <div class=\"g-grid\">
                <div class=\"g-block main-block\">
                    <section id=\"main\">
                        <div data-g5-content=\"\">
                            ";
        // line 13
        $this->displayBlock('gantry', $context, $blocks);
        // line 52
        echo "                        </div>
                    </section>
                </div>
            </div>
        </div>
    </div>
";
    }

    // line 13
    public function block_gantry($context, array $blocks = array())
    {
        // line 14
        echo "                                <div class=\"g-content\" data-g5-content=\"\">
                                    <div class=\"g-grid overview-header\">
                                        <div class=\"g-block\">
                                            <h2 class=\"theme-title\"><i class=\"fa fa-fw fa-plug\"></i> ";
        // line 17
        echo twig_escape_filter($this->env, $this->env->getExtension('GantryTwig')->transFilter("GANTRY5_PLATFORM_AVAILABLE_THEMES"), "html", null, true);
        echo "</h2>
                                        </div>
                                    ";
        // line 19
        if ((isset($context["settings_url"]) ? $context["settings_url"] : null)) {
            // line 20
            echo "                                        <div class=\"g-block\">
                                            <a class=\"button button-primary float-right\" href=\"";
            // line 21
            echo twig_escape_filter($this->env, (isset($context["settings_url"]) ? $context["settings_url"] : null));
            echo "\" data-settings-key=\"";
            echo twig_escape_filter($this->env, (isset($context["settings_key"]) ? $context["settings_key"] : null));
            echo "\"><i class=\"fa fa-cog\"></i> ";
            echo twig_escape_filter($this->env, $this->env->getExtension('GantryTwig')->transFilter("GANTRY5_PLATFORM_PLATFORM_SETTINGS"), "html", null, true);
            echo "</a>
                                        </div>
                                    ";
        }
        // line 24
        echo "                                    </div>
                                    <div class=\"themes cards-wrapper g-grid fixed-blocks\">
                                        ";
        // line 26
        if (twig_length_filter($this->env, (isset($context["themes"]) ? $context["themes"] : null))) {
            // line 27
            echo "                                        ";
            $context['_parent'] = (array) $context;
            $context['_seq'] = twig_ensure_traversable((isset($context["themes"]) ? $context["themes"] : null));
            foreach ($context['_seq'] as $context["id"] => $context["theme"]) {
                // line 28
                echo "                                            <div class=\"theme card\">
                                                <div class=\"theme-id\">
                                                    ";
                // line 30
                if ($this->getAttribute($this->getAttribute($context["theme"], "details", array()), "icon", array())) {
                    echo "<i class=\"fa fa-fw fa-";
                    echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($context["theme"], "details", array()), "icon", array()));
                    echo "\"></i>";
                }
                // line 31
                echo "                                                    ";
                echo twig_escape_filter($this->env, $this->getAttribute($context["theme"], "title", array()));
                echo " <span class=\"theme-info\">(v";
                echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute((isset($context["gantry"]) ? $context["gantry"] : null), "theme", array()), "version", array()), "html", null, true);
                echo " / ";
                echo twig_escape_filter($this->env, $this->getAttribute($context["theme"], "name", array()));
                echo ")</span>
                                                </div>
                                                <div class=\"theme-screenshot\">
                                                    <a href=\"";
                // line 34
                echo twig_escape_filter($this->env, $this->getAttribute($context["theme"], "admin_url", array()));
                echo "\">
                                                        <img src=\"";
                // line 35
                echo twig_escape_filter($this->env, _twig_default_filter($this->env->getExtension('GantryTwig')->urlFunc($this->getAttribute($context["theme"], "thumbnail", array())), "http://www.placehold.it/206x150/f4f4f4"));
                echo "\" />
                                                    </a>
                                                </div>
                                                <div class=\"theme-name\">
                                                    ";
                // line 39
                if ($this->getAttribute($context["theme"], "preview_url", array())) {
                    // line 40
                    echo "                                                    <a class=\"button\" href=\"";
                    echo twig_escape_filter($this->env, $this->getAttribute($context["theme"], "preview_url", array()));
                    echo "\" target=\"_blank\">Preview</a>
                                                    ";
                }
                // line 42
                echo "                                                    <a class=\"button button-primary\" href=\"";
                echo twig_escape_filter($this->env, $this->getAttribute($context["theme"], "admin_url", array()));
                echo "\">Configure</a>
                                                </div>
                                            </div>
                                        ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['id'], $context['theme'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 46
            echo "                                        ";
        } else {
            // line 47
            echo "                                            <p>No themes installed.</p>
                                        ";
        }
        // line 49
        echo "                                    </div>
                                </div>
                            ";
    }

    // line 60
    public function block_footer_section($context, array $blocks = array())
    {
    }

    public function getTemplateName()
    {
        return "@gantry-admin/pages/themes/themes.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  160 => 60,  154 => 49,  150 => 47,  147 => 46,  136 => 42,  130 => 40,  128 => 39,  121 => 35,  117 => 34,  106 => 31,  100 => 30,  96 => 28,  91 => 27,  89 => 26,  85 => 24,  75 => 21,  72 => 20,  70 => 19,  65 => 17,  60 => 14,  57 => 13,  47 => 52,  45 => 13,  37 => 7,  34 => 6,  30 => 1,  28 => 4,  26 => 3,  20 => 1,);
    }
}
