<?php

/* @gantry-admin/partials/ajax.html.twig */
class __TwigTemplate_749d41b666cfdf86666f5f5a7011e0a4de1f0a1b2675616e4510810234dd6e97 extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        $this->parent = false;

        $this->blocks = array(
            'content' => array($this, 'block_content'),
            'gantry_content_wrapper' => array($this, 'block_gantry_content_wrapper'),
            'gantry' => array($this, 'block_gantry'),
        );
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        // line 1
        $this->displayBlock('content', $context, $blocks);
    }

    public function block_content($context, array $blocks = array())
    {
        // line 2
        $this->displayBlock('gantry_content_wrapper', $context, $blocks);
    }

    public function block_gantry_content_wrapper($context, array $blocks = array())
    {
        // line 3
        echo "    ";
        if ((isset($context["navbar"]) ? $context["navbar"] : null)) {
            // line 4
            echo "    <div data-g5-content-wrapper>
        ";
            // line 5
            $this->loadTemplate("@gantry-admin/partials/navigation.html.twig", "@gantry-admin/partials/ajax.html.twig", 5)->display($context);
            // line 6
            echo "        <div class=\"g-grid\">
            <div class=\"g-block main-block\">
                <section id=\"g-main\">
                    <div class=\"g-content\" data-g5-content>
                        ";
            // line 10
            $this->displayBlock('gantry', $context, $blocks);
            // line 12
            echo "                    </div>
                </section>
            </div>
        </div>
    </div>
    ";
        } else {
            // line 18
            echo "        ";
            $this->displayBlock("gantry", $context, $blocks);
            echo "
    ";
        }
    }

    // line 10
    public function block_gantry($context, array $blocks = array())
    {
        // line 11
        echo "                        ";
    }

    public function getTemplateName()
    {
        return "@gantry-admin/partials/ajax.html.twig";
    }

    public function getDebugInfo()
    {
        return array (  69 => 11,  66 => 10,  58 => 18,  50 => 12,  48 => 10,  42 => 6,  40 => 5,  37 => 4,  34 => 3,  28 => 2,  22 => 1,);
    }
}
