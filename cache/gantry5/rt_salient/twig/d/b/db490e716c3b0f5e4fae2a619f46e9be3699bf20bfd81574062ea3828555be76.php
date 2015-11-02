<?php

/* @particles/promocontent.html.twig */
class __TwigTemplate_db490e716c3b0f5e4fae2a619f46e9be3699bf20bfd81574062ea3828555be76 extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        // line 1
        $this->parent = $this->loadTemplate("@nucleus/partials/particle.html.twig", "@particles/promocontent.html.twig", 1);
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
            // line 6
            echo "\t<h2 class=\"g-title\">";
            echo twig_escape_filter($this->env, $this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "title", array()));
            echo "</h2>
\t";
        }
        // line 8
        echo "\t\t
\t<div class=\"g-promocontent ";
        // line 9
        echo twig_escape_filter($this->env, $this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "class", array()));
        echo "\">
\t\t";
        // line 10
        ob_start();
        // line 11
        echo "\t\t\t";
        if (($this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "link", array()) && ($this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "linkstyle", array()) == "inline"))) {
            // line 12
            echo "\t\t\t<a href=\"";
            echo twig_escape_filter($this->env, $this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "link", array()));
            echo "\" class=\"button ";
            echo twig_escape_filter($this->env, $this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "readmoreclass", array()));
            echo "\">";
            echo $this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "readmore", array());
            echo "</a>
\t\t\t";
        }
        // line 14
        echo "\t\t";
        $context["readmoreInline"] = ('' === $tmp = ob_get_clean()) ? '' : new Twig_Markup($tmp, $this->env->getCharset());
        // line 15
        echo "\t\t";
        if (($this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "link", array()) && ($this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "linkstyle", array()) == "aside"))) {
            // line 16
            echo "\t\t<div class=\"g-inline-action-content\"><div class=\"g-inline-action-text\">
\t\t";
        }
        // line 18
        echo "
\t\t";
        // line 19
        if (($this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "promostyle", array()) == "standard")) {
            // line 20
            echo "\t\t<h2 class=\"g-title\">";
            echo twig_escape_filter($this->env, $this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "promo", array()));
            echo "</h2>
\t\t";
            // line 21
            echo twig_escape_filter($this->env, (isset($context["readmoreInline"]) ? $context["readmoreInline"] : null), "html", null, true);
            echo "
\t\t";
        }
        // line 23
        echo "\t\t
\t\t";
        // line 24
        if (($this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "promostyle", array()) == "promo")) {
            // line 25
            echo "\t\t<div class=\"g-promo\">";
            echo twig_escape_filter($this->env, $this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "promo", array()));
            echo "</div>
\t\t";
            // line 26
            echo twig_escape_filter($this->env, (isset($context["readmoreInline"]) ? $context["readmoreInline"] : null), "html", null, true);
            echo "
\t\t";
        }
        // line 28
        echo "\t
\t\t";
        // line 29
        if (($this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "promostyle", array()) == "superpromo")) {
            // line 30
            echo "\t\t<h2 class=\"g-superpromo\">
\t\t\t";
            // line 31
            if ($this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "link", array())) {
                // line 32
                echo "\t\t\t<a href=\"";
                echo twig_escape_filter($this->env, $this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "link", array()));
                echo "\">
\t\t\t";
            }
            // line 34
            echo "\t\t\t\t";
            echo $this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "promo", array());
            echo "
\t\t\t";
            // line 35
            if ($this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "link", array())) {
                // line 36
                echo "\t\t\t</a>
\t\t\t";
            }
            // line 38
            echo "\t\t</h2>
\t\t";
            // line 39
            echo twig_escape_filter($this->env, (isset($context["readmoreInline"]) ? $context["readmoreInline"] : null), "html", null, true);
            echo "
\t\t";
        }
        // line 41
        echo "\t
\t\t";
        // line 42
        if (($this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "promostyle", array()) == "subpromo")) {
            // line 43
            echo "\t\t<div class=\"g-subpromo\">
\t\t\t<span>";
            // line 44
            echo $this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "promo", array());
            echo "</span>
\t\t\t";
            // line 45
            echo twig_escape_filter($this->env, (isset($context["readmoreInline"]) ? $context["readmoreInline"] : null), "html", null, true);
            echo "
\t\t</div>
\t\t";
        }
        // line 48
        echo "\t
\t\t";
        // line 49
        if ($this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "tags", array())) {
            // line 50
            echo "\t\t<ul class=\"g-tags\">
\t\t";
            // line 51
            $context['_parent'] = (array) $context;
            $context['_seq'] = twig_ensure_traversable($this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "tags", array()));
            foreach ($context['_seq'] as $context["_key"] => $context["tag"]) {
                // line 52
                echo "\t\t\t<li>
\t\t\t\t";
                // line 53
                if ($this->getAttribute($context["tag"], "link", array())) {
                    // line 54
                    echo "\t\t\t\t<a href=\"";
                    echo twig_escape_filter($this->env, $this->getAttribute($context["tag"], "link", array()));
                    echo "\">
\t\t\t\t";
                }
                // line 56
                echo "\t\t\t\t\t";
                if ($this->getAttribute($context["tag"], "icon", array())) {
                    // line 57
                    echo "\t\t\t\t\t<i class=\"";
                    echo twig_escape_filter($this->env, $this->getAttribute($context["tag"], "icon", array()));
                    echo "\"></i>
\t\t\t\t\t";
                }
                // line 59
                echo "\t\t\t\t\t";
                echo twig_escape_filter($this->env, $this->getAttribute($context["tag"], "text", array()));
                echo "
\t\t\t\t";
                // line 60
                if ($this->getAttribute($context["tag"], "link", array())) {
                    // line 61
                    echo "\t\t\t\t</a>
\t\t\t\t";
                }
                // line 63
                echo "\t\t\t</li>
\t\t";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['tag'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 65
            echo "\t\t</ul>
\t\t";
        }
        // line 67
        echo "\t\t
\t\t";
        // line 68
        if ($this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "desc", array())) {
            // line 69
            echo "\t\t<div class=\"g-textpromo\">
\t\t\t";
            // line 70
            echo $this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "desc", array());
            echo "
\t\t</div>
\t\t";
        }
        // line 73
        echo "\t\t
\t\t";
        // line 74
        if (($this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "link", array()) && ($this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "linkstyle", array()) == "aside"))) {
            // line 75
            echo "\t\t</div>
\t\t<div class=\"g-inline-action-button\">
\t\t";
        }
        // line 78
        echo "\t\t
\t\t";
        // line 79
        if (($this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "link", array()) && (($this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "linkstyle", array()) == "block") || ($this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "linkstyle", array()) == "aside")))) {
            // line 80
            echo "\t\t<a href=\"";
            echo twig_escape_filter($this->env, $this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "link", array()));
            echo "\" class=\"button ";
            echo twig_escape_filter($this->env, $this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "readmoreclass", array()));
            echo "\">";
            echo $this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "readmore", array());
            echo "</a>
\t\t";
        }
        // line 82
        echo "\t\t
\t\t";
        // line 83
        if (($this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "link", array()) && ($this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "linkstyle", array()) == "aside"))) {
            // line 84
            echo "\t\t</div></div>
\t\t";
        }
        // line 86
        echo "\t</div>
";
    }

    public function getTemplateName()
    {
        return "@particles/promocontent.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  259 => 86,  255 => 84,  253 => 83,  250 => 82,  240 => 80,  238 => 79,  235 => 78,  230 => 75,  228 => 74,  225 => 73,  219 => 70,  216 => 69,  214 => 68,  211 => 67,  207 => 65,  200 => 63,  196 => 61,  194 => 60,  189 => 59,  183 => 57,  180 => 56,  174 => 54,  172 => 53,  169 => 52,  165 => 51,  162 => 50,  160 => 49,  157 => 48,  151 => 45,  147 => 44,  144 => 43,  142 => 42,  139 => 41,  134 => 39,  131 => 38,  127 => 36,  125 => 35,  120 => 34,  114 => 32,  112 => 31,  109 => 30,  107 => 29,  104 => 28,  99 => 26,  94 => 25,  92 => 24,  89 => 23,  84 => 21,  79 => 20,  77 => 19,  74 => 18,  70 => 16,  67 => 15,  64 => 14,  54 => 12,  51 => 11,  49 => 10,  45 => 9,  42 => 8,  36 => 6,  34 => 5,  31 => 4,  28 => 3,  11 => 1,);
    }
}
