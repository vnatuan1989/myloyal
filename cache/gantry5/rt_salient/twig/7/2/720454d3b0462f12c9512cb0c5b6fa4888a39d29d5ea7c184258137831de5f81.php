<?php

/* @nucleus/page.html.twig */
class __TwigTemplate_720454d3b0462f12c9512cb0c5b6fa4888a39d29d5ea7c184258137831de5f81 extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        $this->parent = false;

        $this->blocks = array(
            'content' => array($this, 'block_content'),
            'page_offcanvas' => array($this, 'block_page_offcanvas'),
            'page_layout' => array($this, 'block_page_layout'),
            'page_top' => array($this, 'block_page_top'),
            'page_bottom' => array($this, 'block_page_bottom'),
            'page_head' => array($this, 'block_page_head'),
            'page_footer' => array($this, 'block_page_footer'),
            'page' => array($this, 'block_page'),
            'page_body' => array($this, 'block_page_body'),
        );
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        // line 1
        $this->getAttribute($this->getAttribute((isset($context["gantry"]) ? $context["gantry"] : null), "theme", array()), "setLayout", array(), "method");
        // line 3
        ob_start();
        // line 4
        echo "    ";
        if ($this->getAttribute($this->getAttribute((isset($context["gantry"]) ? $context["gantry"] : null), "theme", array()), "hasContent", array(), "method")) {
            // line 5
            echo "        ";
            $this->displayBlock('content', $context, $blocks);
            // line 7
            echo "    ";
        }
        $context["content"] = ('' === $tmp = ob_get_clean()) ? '' : new Twig_Markup($tmp, $this->env->getCharset());
        // line 10
        $context["offcanvas"] = null;
        // line 11
        $context['_parent'] = (array) $context;
        $context['_seq'] = twig_ensure_traversable($this->getAttribute($this->getAttribute((isset($context["gantry"]) ? $context["gantry"] : null), "theme", array()), "segments", array()));
        foreach ($context['_seq'] as $context["_key"] => $context["segment"]) {
            if (($this->getAttribute($context["segment"], "type", array()) == "offcanvas")) {
                // line 12
                $context["offcanvas"] = $context["segment"];
            }
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['segment'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 15
        ob_start();
        // line 16
        echo "    ";
        $this->displayBlock('page_offcanvas', $context, $blocks);
        $context["page_offcanvas"] = ('' === $tmp = ob_get_clean()) ? '' : new Twig_Markup($tmp, $this->env->getCharset());
        // line 23
        $context["page_offcanvas"] = ((trim((isset($context["page_offcanvas"]) ? $context["page_offcanvas"] : null))) ? (trim((isset($context["page_offcanvas"]) ? $context["page_offcanvas"] : null))) : (""));
        // line 24
        $context["offcanvas_position"] = (((isset($context["page_offcanvas"]) ? $context["page_offcanvas"] : null)) ? ((($this->getAttribute($this->getAttribute((isset($context["offcanvas"]) ? $context["offcanvas"] : null), "attributes", array(), "any", false, true), "position", array(), "any", true, true)) ? (_twig_default_filter($this->getAttribute($this->getAttribute((isset($context["offcanvas"]) ? $context["offcanvas"] : null), "attributes", array(), "any", false, true), "position", array()), "g-offcanvas-left")) : ("g-offcanvas-left"))) : (""));
        // line 26
        ob_start();
        // line 27
        echo "    ";
        $this->displayBlock('page_layout', $context, $blocks);
        $context["page_layout"] = ('' === $tmp = ob_get_clean()) ? '' : new Twig_Markup($tmp, $this->env->getCharset());
        // line 34
        ob_start();
        // line 35
        echo "    ";
        $this->displayBlock('page_top', $context, $blocks);
        $context["page_top"] = ('' === $tmp = ob_get_clean()) ? '' : new Twig_Markup($tmp, $this->env->getCharset());
        // line 39
        ob_start();
        // line 40
        echo "    ";
        $this->displayBlock('page_bottom', $context, $blocks);
        $context["page_bottom"] = ('' === $tmp = ob_get_clean()) ? '' : new Twig_Markup($tmp, $this->env->getCharset());
        // line 44
        ob_start();
        // line 45
        echo "    ";
        $this->displayBlock('page_head', $context, $blocks);
        $context["page_head"] = ('' === $tmp = ob_get_clean()) ? '' : new Twig_Markup($tmp, $this->env->getCharset());
        // line 50
        ob_start();
        // line 51
        echo "    ";
        $this->displayBlock('page_footer', $context, $blocks);
        $context["page_footer"] = ('' === $tmp = ob_get_clean()) ? '' : new Twig_Markup($tmp, $this->env->getCharset());
        // line 56
        $this->displayBlock('page', $context, $blocks);
        // line 78
        $this->getAttribute($this->getAttribute((isset($context["gantry"]) ? $context["gantry"] : null), "platform", array()), "finalize", array(), "method");
    }

    // line 5
    public function block_content($context, array $blocks = array())
    {
        // line 6
        echo "        ";
    }

    // line 16
    public function block_page_offcanvas($context, array $blocks = array())
    {
        // line 17
        echo "        ";
        if ((isset($context["offcanvas"]) ? $context["offcanvas"] : null)) {
            // line 18
            echo "            ";
            $this->loadTemplate((("@nucleus/layout/" . $this->getAttribute((isset($context["offcanvas"]) ? $context["offcanvas"] : null), "type", array())) . ".html.twig"), "@nucleus/page.html.twig", 18)->display(array_merge($context, array("segment" => (isset($context["offcanvas"]) ? $context["offcanvas"] : null))));
        }
        // line 20
        echo "    ";
    }

    // line 27
    public function block_page_layout($context, array $blocks = array())
    {
        // line 28
        echo "    ";
        $context['_parent'] = (array) $context;
        $context['_seq'] = twig_ensure_traversable($this->getAttribute($this->getAttribute((isset($context["gantry"]) ? $context["gantry"] : null), "theme", array()), "segments", array()));
        $context['loop'] = array(
          'parent' => $context['_parent'],
          'index0' => 0,
          'index'  => 1,
          'first'  => true,
        );
        foreach ($context['_seq'] as $context["_key"] => $context["segment"]) {
            if (($this->getAttribute($context["segment"], "type", array()) != "offcanvas")) {
                // line 29
                echo "        ";
                $this->loadTemplate((("@nucleus/layout/" . $this->getAttribute($context["segment"], "type", array())) . ".html.twig"), "@nucleus/page.html.twig", 29)->display(array_merge($context, array("segments" => $this->getAttribute($context["segment"], "children", array()))));
                // line 30
                echo "    ";
                ++$context['loop']['index0'];
                ++$context['loop']['index'];
                $context['loop']['first'] = false;
            }
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['segment'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 31
        echo "    ";
    }

    // line 35
    public function block_page_top($context, array $blocks = array())
    {
        // line 36
        echo "    ";
    }

    // line 40
    public function block_page_bottom($context, array $blocks = array())
    {
        // line 41
        echo "    ";
    }

    // line 45
    public function block_page_head($context, array $blocks = array())
    {
        // line 46
        $this->loadTemplate("partials/page_head.html.twig", "@nucleus/page.html.twig", 46)->display($context);
    }

    // line 51
    public function block_page_footer($context, array $blocks = array())
    {
        // line 52
        echo "        ";
        echo twig_join_filter($this->getAttribute((isset($context["gantry"]) ? $context["gantry"] : null), "scripts", array(0 => "footer"), "method"), "
    ");
        echo "
    ";
    }

    // line 56
    public function block_page($context, array $blocks = array())
    {
        // line 57
        echo "<!DOCTYPE ";
        echo (($this->getAttribute($this->getAttribute((isset($context["gantry"]) ? $context["gantry"] : null), "page", array(), "any", false, true), "doctype", array(), "any", true, true)) ? (_twig_default_filter($this->getAttribute($this->getAttribute((isset($context["gantry"]) ? $context["gantry"] : null), "page", array(), "any", false, true), "doctype", array()), "html")) : ("html"));
        echo ">
<html";
        // line 58
        echo $this->getAttribute($this->getAttribute((isset($context["gantry"]) ? $context["gantry"] : null), "page", array()), "htmlAttributes", array());
        echo ">
    ";
        // line 59
        echo (isset($context["page_head"]) ? $context["page_head"] : null);
        echo "
    ";
        // line 60
        $this->displayBlock('page_body', $context, $blocks);
        // line 75
        echo "
</html>
";
    }

    // line 60
    public function block_page_body($context, array $blocks = array())
    {
        // line 61
        echo "<body";
        echo $this->getAttribute($this->getAttribute((isset($context["gantry"]) ? $context["gantry"] : null), "page", array()), "bodyAttributes", array(0 => array("class" => array(0 => (isset($context["offcanvas_position"]) ? $context["offcanvas_position"] : null), 1 => $this->getAttribute($this->getAttribute((isset($context["gantry"]) ? $context["gantry"] : null), "page", array()), "preset", array()), 2 => ("g-style-" . $this->getAttribute($this->getAttribute((isset($context["gantry"]) ? $context["gantry"] : null), "theme", array()), "preset", array()))))), "method");
        echo ">
        ";
        // line 62
        echo (isset($context["page_offcanvas"]) ? $context["page_offcanvas"] : null);
        echo "
        <div id=\"g-page-surround\">
            ";
        // line 64
        if (trim((isset($context["page_offcanvas"]) ? $context["page_offcanvas"] : null))) {
            // line 65
            echo "            <div class=\"g-offcanvas-hide g-offcanvas-toggle\" data-offcanvas-toggle><i class=\"fa fa-fw fa-bars\"></i></div>
            ";
        }
        // line 67
        echo "            ";
        echo (isset($context["page_top"]) ? $context["page_top"] : null);
        echo "
            ";
        // line 68
        echo (isset($context["page_layout"]) ? $context["page_layout"] : null);
        echo "
            ";
        // line 69
        echo (isset($context["page_bottom"]) ? $context["page_bottom"] : null);
        echo "
        </div>
        <script type=\"text/javascript\" src=\"";
        // line 71
        echo twig_escape_filter($this->env, $this->env->getExtension('GantryTwig')->urlFunc("gantry-assets://js/main.js"), "html", null, true);
        echo "\"></script>
        ";
        // line 72
        echo (isset($context["page_footer"]) ? $context["page_footer"] : null);
        echo "
    </body>";
    }

    public function getTemplateName()
    {
        return "@nucleus/page.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  248 => 72,  244 => 71,  239 => 69,  235 => 68,  230 => 67,  226 => 65,  224 => 64,  219 => 62,  214 => 61,  211 => 60,  205 => 75,  203 => 60,  199 => 59,  195 => 58,  190 => 57,  187 => 56,  179 => 52,  176 => 51,  172 => 46,  169 => 45,  165 => 41,  162 => 40,  158 => 36,  155 => 35,  151 => 31,  141 => 30,  138 => 29,  126 => 28,  123 => 27,  119 => 20,  115 => 18,  112 => 17,  109 => 16,  105 => 6,  102 => 5,  98 => 78,  96 => 56,  92 => 51,  90 => 50,  86 => 45,  84 => 44,  80 => 40,  78 => 39,  74 => 35,  72 => 34,  68 => 27,  66 => 26,  64 => 24,  62 => 23,  58 => 16,  56 => 15,  49 => 12,  44 => 11,  42 => 10,  38 => 7,  35 => 5,  32 => 4,  30 => 3,  28 => 1,);
    }
}
