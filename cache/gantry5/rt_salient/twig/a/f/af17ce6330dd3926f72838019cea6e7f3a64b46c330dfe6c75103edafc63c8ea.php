<?php

/* @particles/contentlist.html.twig */
class __TwigTemplate_af17ce6330dd3926f72838019cea6e7f3a64b46c330dfe6c75103edafc63c8ea extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        // line 1
        $this->parent = $this->loadTemplate("@nucleus/partials/particle.html.twig", "@particles/contentlist.html.twig", 1);
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
        echo "
\t";
        // line 5
        if ($this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "title", array())) {
            echo "<h2 class=\"g-title\">";
            echo $this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "title", array());
            echo "</h2>";
        }
        // line 6
        echo "
\t<div class=\"g-contentlist ";
        // line 7
        echo twig_escape_filter($this->env, $this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "class", array()));
        echo "\">

\t    <div class=\"g-grid\">
\t        <div class=\"g-block size-33 g-contentlist-img\" style=\"background-image: url(";
        // line 10
        echo twig_escape_filter($this->env, $this->env->getExtension('GantryTwig')->urlFunc($this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "image", array())));
        echo ")\">
\t            ";
        // line 11
        if ($this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "imagetag", array())) {
            echo "<div class=\"g-contentlist-img-tag\">";
            echo twig_escape_filter($this->env, $this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "imagetag", array()));
            echo "</div>";
        }
        // line 12
        echo "\t        </div>
\t        <div class=\"g-block size-67 g-contentlist-text\">
\t            <div class=\"g-content\">
\t                ";
        // line 15
        if ($this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "headline", array())) {
            echo "<h3 class=\"g-contentlist-headline\">";
            echo $this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "headline", array());
            echo "</h3>";
        }
        // line 16
        echo "\t                ";
        if ($this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "subtitle", array())) {
            echo "<h5 class=\"g-contentlist-subtitle\">";
            echo $this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "subtitle", array());
            echo "</h5>";
        }
        // line 17
        echo "\t                ";
        if ($this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "desc", array())) {
            echo "<div class=\"g-contentlist-desc\">";
            echo $this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "desc", array());
            echo "</div>";
        }
        // line 18
        echo "\t                ";
        if ($this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "readmore", array())) {
            echo "<a href=\"";
            echo twig_escape_filter($this->env, $this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "link", array()));
            echo "\" class=\"button ";
            echo twig_escape_filter($this->env, $this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "readmoreclass", array()));
            echo "\">";
            if ($this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "icon", array())) {
                echo "<i class=\"";
                echo twig_escape_filter($this->env, $this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "icon", array()));
                echo "\"></i>";
            }
            echo $this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "readmore", array());
            echo "</a>";
        }
        // line 19
        echo "\t            </div>
\t        </div>    
\t    </div> 

\t    ";
        // line 23
        if ($this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "listgriditems", array())) {
            // line 24
            echo "\t    <div class=\"g-grid g-contentlist-list\">
\t        <div class=\"g-block\">
\t            <div class=\"g-content\">
\t                <div class=\"g-listgrid ";
            // line 27
            echo twig_escape_filter($this->env, $this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "cols", array()));
            echo "\">
\t\t\t\t\t\t";
            // line 28
            $context['_parent'] = (array) $context;
            $context['_seq'] = twig_ensure_traversable($this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "listgriditems", array()));
            foreach ($context['_seq'] as $context["_key"] => $context["listgriditem"]) {
                // line 29
                echo "\t\t                    <div class=\"g-listgrid-item\">
\t\t                        <a href=\"";
                // line 30
                echo twig_escape_filter($this->env, $this->getAttribute($context["listgriditem"], "link", array()));
                echo "\">
\t\t                        \t<span class=\"";
                // line 31
                echo twig_escape_filter($this->env, $this->getAttribute($context["listgriditem"], "icon", array()), "html", null, true);
                echo "\"></span>
\t\t                        \t<span>";
                // line 32
                echo $this->getAttribute($context["listgriditem"], "text", array());
                echo "</span>
\t\t                        </a>
\t\t                    </div>
\t\t\t\t\t\t";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['listgriditem'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 35
            echo " 
\t                </div>
\t            </div>
\t        </div>
\t    </div>   
\t\t";
        }
        // line 41
        echo "\t\t
\t</div>

";
    }

    public function getTemplateName()
    {
        return "@particles/contentlist.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  150 => 41,  142 => 35,  132 => 32,  128 => 31,  124 => 30,  121 => 29,  117 => 28,  113 => 27,  108 => 24,  106 => 23,  100 => 19,  84 => 18,  77 => 17,  70 => 16,  64 => 15,  59 => 12,  53 => 11,  49 => 10,  43 => 7,  40 => 6,  34 => 5,  31 => 4,  28 => 3,  11 => 1,);
    }
}
