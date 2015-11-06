<?php

/* @particles/blockcontent.html.twig */
class __TwigTemplate_55bf70c27f3d211c1a29eaf099f32dcc4c0628debf6962ae3eb2f46069264637 extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        // line 1
        $this->parent = $this->loadTemplate("@nucleus/partials/particle.html.twig", "@particles/blockcontent.html.twig", 1);
        $this->blocks = array(
            'particle' => array($this, 'block_particle'),
        );
    }

    protected function doGetParent(array $context)
    {
        return "@nucleus/partials/particle.html.twig";
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        $this->parent->display($context, array_merge($this->blocks, $blocks));
    }

    // line 3
    public function block_particle($context, array $blocks = array())
    {
        // line 4
        echo "\t<div class=\"g-block-content\">
\t\t";
        // line 5
        if (((($this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "image", array()) || $this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "headline", array())) || $this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "description", array())) || $this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "linktext", array()))) {
            // line 6
            echo "\t\t<div class=\"g-grid\">
\t\t\t<div class=\"g-block\">
\t\t\t\t<div class=\"g-content\">
\t\t\t\t\t";
            // line 9
            if ($this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "image", array())) {
                echo "<img src=\"";
                echo twig_escape_filter($this->env, $this->env->getExtension('GantryTwig')->urlFunc($this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "image", array())), "html", null, true);
                echo "\" class=\"logo-large\" alt=\"";
                echo twig_escape_filter($this->env, $this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "headline", array()));
                echo "\" />";
            }
            // line 10
            echo "\t\t\t\t\t";
            if ($this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "headline", array())) {
                echo "<h3 class=\"g-title\">";
                echo $this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "headline", array());
                echo "</h3>";
            }
            // line 11
            echo "\t\t\t\t\t";
            if ($this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "description", array())) {
                echo "<div class=\"g-block-description\">";
                echo $this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "description", array());
                echo "</div>";
            }
            // line 12
            echo "\t\t\t\t\t";
            if ($this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "linktext", array())) {
                echo "<p><a href=\"";
                echo twig_escape_filter($this->env, $this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "link", array()));
                echo "\" class=\"button\">";
                echo twig_escape_filter($this->env, $this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "linktext", array()));
                echo "</a></p>";
            }
            // line 13
            echo "\t\t\t\t</div>
\t\t\t</div>
\t\t</div>
\t\t";
        }
        // line 17
        echo "\t\t<div class=\"g-grid\">
\t\t\t";
        // line 18
        $context['_parent'] = (array) $context;
        $context['_seq'] = twig_ensure_traversable($this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "subcontents", array()));
        foreach ($context['_seq'] as $context["_key"] => $context["subcontent"]) {
            // line 19
            echo "\t\t\t\t<div class=\"g-block ";
            echo twig_escape_filter($this->env, $this->getAttribute($context["subcontent"], "class", array()), "html", null, true);
            echo "\">
\t\t\t\t\t<div class=\"g-content\">
\t\t\t\t\t\t";
            // line 21
            if ($this->getAttribute($context["subcontent"], "link", array())) {
                echo "<a href=\"";
                echo twig_escape_filter($this->env, $this->getAttribute($context["subcontent"], "link", array()));
                echo "\">";
            }
            // line 22
            echo "\t\t\t\t\t\t";
            if ($this->getAttribute($context["subcontent"], "icon", array())) {
                echo "<i class=\"";
                echo twig_escape_filter($this->env, $this->getAttribute($context["subcontent"], "icon", array()), "html", null, true);
                echo " g-block-icons\"></i>";
            }
            // line 23
            echo "\t\t\t\t\t\t";
            if ($this->getAttribute($context["subcontent"], "img", array())) {
                echo "<img src=\"";
                echo twig_escape_filter($this->env, $this->env->getExtension('GantryTwig')->urlFunc($this->getAttribute($context["subcontent"], "img", array())), "html", null, true);
                echo "\" class=\"g-block-subcontent-img\" style=\"float: left;margin-right: 15px;\" alt=\"";
                echo twig_escape_filter($this->env, $this->getAttribute($context["subcontent"], "title", array()));
                echo "\" />";
            }
            // line 24
            echo "\t\t\t\t\t\t";
            if ($this->getAttribute($context["subcontent"], "link", array())) {
                echo "</a>";
            }
            // line 25
            echo "\t\t\t\t\t\t
\t\t\t\t\t\t";
            // line 26
            if ($this->getAttribute($context["subcontent"], "subtitle", array())) {
                echo " <div class=\"g-subtitle\">";
                if ($this->getAttribute($context["subcontent"], "link", array())) {
                    echo "<a href=\"";
                    echo twig_escape_filter($this->env, $this->getAttribute($context["subcontent"], "link", array()));
                    echo "\">";
                }
                echo $this->getAttribute($context["subcontent"], "subtitle", array());
                if ($this->getAttribute($context["subcontent"], "link", array())) {
                    echo "</a>";
                }
                echo "</div> ";
            }
            // line 27
            echo "\t\t\t\t\t\t";
            if ($this->getAttribute($context["subcontent"], "name", array())) {
                echo "<h4>";
                if ($this->getAttribute($context["subcontent"], "link", array())) {
                    echo "<a href=\"";
                    echo twig_escape_filter($this->env, $this->getAttribute($context["subcontent"], "link", array()));
                    echo "\">";
                }
                echo $this->getAttribute($context["subcontent"], "name", array());
                if ($this->getAttribute($context["subcontent"], "link", array())) {
                    echo "</a>";
                }
                echo "</h4>";
            }
            // line 28
            echo "\t\t\t\t\t\t";
            if ($this->getAttribute($context["subcontent"], "description", array())) {
                echo $this->getAttribute($context["subcontent"], "description", array());
            }
            // line 29
            echo "\t\t\t\t\t</div>
\t\t\t\t</div>
\t\t\t";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['subcontent'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 32
        echo "\t\t</div>
\t</div>
";
    }

    public function getTemplateName()
    {
        return "@particles/blockcontent.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  163 => 32,  155 => 29,  150 => 28,  135 => 27,  121 => 26,  118 => 25,  113 => 24,  104 => 23,  97 => 22,  91 => 21,  85 => 19,  81 => 18,  78 => 17,  72 => 13,  63 => 12,  56 => 11,  49 => 10,  41 => 9,  36 => 6,  34 => 5,  31 => 4,  28 => 3,  11 => 1,);
    }
}
