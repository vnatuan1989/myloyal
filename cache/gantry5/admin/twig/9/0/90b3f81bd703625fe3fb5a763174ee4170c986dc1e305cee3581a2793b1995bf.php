<?php

/* @gantry-admin/partials/layout.html.twig */
class __TwigTemplate_90b3f81bd703625fe3fb5a763174ee4170c986dc1e305cee3581a2793b1995bf extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        // line 1
        $this->parent = $this->loadTemplate("@gantry-admin/partials/page.html.twig", "@gantry-admin/partials/layout.html.twig", 1);
        $this->blocks = array(
            'stylesheets' => array($this, 'block_stylesheets'),
            'javascript' => array($this, 'block_javascript'),
            'content' => array($this, 'block_content'),
            'gantry_content_wrapper' => array($this, 'block_gantry_content_wrapper'),
            'gantry' => array($this, 'block_gantry'),
            'footer_section' => array($this, 'block_footer_section'),
        );
    }

    protected function doGetParent(array $context)
    {
        return "@gantry-admin/partials/page.html.twig";
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        $this->parent->display($context, array_merge($this->blocks, $blocks));
    }

    // line 3
    public function block_stylesheets($context, array $blocks = array())
    {
        // line 4
        echo "    <link rel=\"stylesheet\" href=\"";
        echo twig_escape_filter($this->env, $this->env->getExtension('GantryTwig')->urlFunc("gantry-admin://assets/css-compiled/admin.css"));
        echo "\" type=\"text/css\" />
    <link rel=\"stylesheet\" href=\"";
        // line 5
        echo twig_escape_filter($this->env, $this->env->getExtension('GantryTwig')->urlFunc("gantry-admin://assets/css/font-awesome.min.css"));
        echo "\" type=\"text/css\" />
    ";
        // line 6
        $this->displayParentBlock("stylesheets", $context, $blocks);
        echo "
";
    }

    // line 9
    public function block_javascript($context, array $blocks = array())
    {
        // line 10
        echo "    <script type=\"text/javascript\" async=\"async\" src=\"";
        echo twig_escape_filter($this->env, $this->env->getExtension('GantryTwig')->urlFunc("gantry-admin://assets/js/main.js"));
        echo "\"></script>
    ";
        // line 11
        $this->displayParentBlock("javascript", $context, $blocks);
        echo "
";
    }

    // line 14
    public function block_content($context, array $blocks = array())
    {
        // line 15
        echo "<div id=\"g5-container\">
    <div class=\"inner-container\">
        ";
        // line 17
        $this->displayBlock('gantry_content_wrapper', $context, $blocks);
        // line 32
        echo "    </div>
</div>
";
    }

    // line 17
    public function block_gantry_content_wrapper($context, array $blocks = array())
    {
        // line 18
        echo "            <div data-g5-content-wrapper>
                <div class=\"g-grid\">
                    <div class=\"g-block main-block\">
                        <section id=\"g-main\">
                            <div class=\"g-content\" data-g5-content>
                                ";
        // line 23
        $this->displayBlock('gantry', $context, $blocks);
        // line 26
        echo "                            </div>
                        </section>
                    </div>
                </div>
            </div>
        ";
    }

    // line 23
    public function block_gantry($context, array $blocks = array())
    {
        // line 24
        echo "                                    ";
        echo (isset($context["content"]) ? $context["content"] : null);
        echo "
                                ";
    }

    // line 36
    public function block_footer_section($context, array $blocks = array())
    {
    }

    public function getTemplateName()
    {
        return "@gantry-admin/partials/layout.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  111 => 36,  104 => 24,  101 => 23,  92 => 26,  90 => 23,  83 => 18,  80 => 17,  74 => 32,  72 => 17,  68 => 15,  65 => 14,  59 => 11,  54 => 10,  51 => 9,  45 => 6,  41 => 5,  36 => 4,  33 => 3,  11 => 1,);
    }
}
