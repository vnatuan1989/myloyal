<?php

/* @particles/infolist.html.twig */
class __TwigTemplate_51f99b74a921cd10e34fe74472750cee26f48c488bb86dde57ae9b11f468e18e extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        // line 1
        $this->parent = $this->loadTemplate("@nucleus/partials/particle.html.twig", "@particles/infolist.html.twig", 1);
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
            echo "<h2 class=\"g-title g-infolist-title\">";
            echo $this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "title", array());
            echo "</h2>";
        }
        // line 6
        echo "
\t<div class=\"g-infolist ";
        // line 7
        echo twig_escape_filter($this->env, $this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "cols", array()));
        echo " ";
        echo twig_escape_filter($this->env, $this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "class", array()));
        echo "\">
\t\t
\t\t";
        // line 9
        if ($this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "intro", array())) {
            // line 10
            echo "\t\t<p>";
            echo $this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "intro", array());
            echo "</p>
\t\t";
        }
        // line 12
        echo "
\t\t";
        // line 13
        $context['_parent'] = (array) $context;
        $context['_seq'] = twig_ensure_traversable($this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "infolists", array()));
        foreach ($context['_seq'] as $context["_key"] => $context["infolist"]) {
            // line 14
            echo "\t\t\t<div class=\"g-infolist-item ";
            if ($this->getAttribute($context["infolist"], "image", array())) {
                echo " g-infolist-with-img";
            }
            echo "\">
\t\t\t\t
\t\t\t\t";
            // line 16
            ob_start();
            // line 17
            echo "\t\t\t\t<div class=\"g-infolist-item-img g-block";
            if (($this->getAttribute($context["infolist"], "imagestyle", array()) == "compact")) {
                echo " size-22 hidden-phone";
            }
            if (($this->getAttribute($context["infolist"], "imagestyle", array()) == "browser")) {
                echo " browser";
            }
            echo " ";
            echo twig_escape_filter($this->env, $this->getAttribute($context["infolist"], "imageloc", array()));
            echo "\">
\t\t\t\t\t";
            // line 18
            if (($this->getAttribute($context["infolist"], "imagestyle", array()) == "browser")) {
                // line 19
                echo "\t\t\t\t\t<div class=\"browser-wrapper\">
\t\t\t\t\t\t<div class=\"browser-bar\">
\t\t\t\t\t\t\t<span class=\"browser-button\"></span>
\t\t\t\t\t\t</div>
\t\t\t\t\t";
            }
            // line 24
            echo "\t\t\t\t\t<img src=\"";
            echo twig_escape_filter($this->env, $this->env->getExtension('GantryTwig')->urlFunc($this->getAttribute($context["infolist"], "image", array())));
            echo "\" alt=\"image\" />
\t\t\t\t\t";
            // line 25
            if (($this->getAttribute($context["infolist"], "imagestyle", array()) == "browser")) {
                // line 26
                echo "\t\t\t\t\t</div>
\t\t\t\t\t";
            }
            // line 28
            echo "\t\t\t\t</div>
\t\t\t\t";
            $context["imagedata"] = ('' === $tmp = ob_get_clean()) ? '' : new Twig_Markup($tmp, $this->env->getCharset());
            // line 30
            echo "\t\t\t\t
\t\t\t\t";
            // line 31
            if (($this->getAttribute($context["infolist"], "image", array()) && ($this->getAttribute($context["infolist"], "imageloc", array()) == "left"))) {
                // line 32
                echo "\t\t\t\t";
                echo twig_escape_filter($this->env, (isset($context["imagedata"]) ? $context["imagedata"] : null), "html", null, true);
                echo "
\t\t\t\t";
            }
            // line 34
            echo "\t\t\t\t
\t\t\t\t<div class=\"g-infolist-item-text ";
            // line 35
            if ($this->getAttribute($context["infolist"], "image", array())) {
                echo "g-block";
            }
            echo "\">
\t\t\t\t\t";
            // line 36
            if ($this->getAttribute($context["infolist"], "title", array())) {
                // line 37
                echo "\t\t\t\t\t<div class=\"g-infolist-item-title ";
                if (($this->getAttribute($context["infolist"], "textstyle", array()) == "bold")) {
                    echo "g-bold";
                }
                echo "\">
\t\t\t\t\t\t";
                // line 38
                if (($this->getAttribute($context["infolist"], "textstyle", array()) == "large")) {
                    // line 39
                    echo "\t\t\t\t\t\t<div class=\"g-title-hero\">
\t\t\t\t\t\t";
                }
                // line 40
                echo "\t
\t\t\t\t\t\t";
                // line 41
                if ($this->getAttribute($context["infolist"], "link", array())) {
                    // line 42
                    echo "\t\t\t\t\t\t<a href=\"";
                    echo twig_escape_filter($this->env, $this->getAttribute($context["infolist"], "link", array()));
                    echo "\">
\t\t\t\t\t\t";
                }
                // line 43
                echo "\t
\t\t\t\t\t\t\t";
                // line 44
                echo $this->getAttribute($context["infolist"], "title", array());
                echo "
\t\t\t\t\t\t";
                // line 45
                if ($this->getAttribute($context["infolist"], "link", array())) {
                    // line 46
                    echo "\t\t\t\t\t\t</a>
\t\t\t\t\t\t";
                }
                // line 47
                echo "\t
\t\t\t\t\t\t";
                // line 48
                if (($this->getAttribute($context["infolist"], "textstyle", array()) == "large")) {
                    // line 49
                    echo "\t\t\t\t\t\t</div>
\t\t\t\t\t\t";
                }
                // line 51
                echo "\t\t\t\t\t</div>
\t\t\t\t\t";
            }
            // line 53
            echo "\t\t\t\t\t
\t\t\t\t\t";
            // line 54
            if (($this->getAttribute($context["infolist"], "tag", array()) || $this->getAttribute($context["infolist"], "subtag", array()))) {
                // line 55
                echo "\t\t\t\t\t<div class=\"g-infolist-tags\">
\t\t\t\t\t";
                // line 56
                if ($this->getAttribute($context["infolist"], "tag", array())) {
                    // line 57
                    echo "\t\t\t\t\t\t";
                    if ($this->getAttribute($context["infolist"], "link", array())) {
                        // line 58
                        echo "\t\t\t\t\t\t<a href=\"";
                        echo twig_escape_filter($this->env, $this->getAttribute($context["infolist"], "link", array()));
                        echo "\">
\t\t\t\t\t\t";
                    }
                    // line 59
                    echo "\t
\t\t\t\t\t\t\t<span class=\"g-tag\">";
                    // line 60
                    echo twig_escape_filter($this->env, $this->getAttribute($context["infolist"], "tag", array()));
                    echo "</span>
\t\t\t\t\t\t";
                    // line 61
                    if ($this->getAttribute($context["infolist"], "link", array())) {
                        // line 62
                        echo "\t\t\t\t\t\t</a>
\t\t\t\t\t\t";
                    }
                    // line 63
                    echo "\t
\t\t\t\t\t";
                }
                // line 64
                echo "\t
\t\t\t
\t\t\t\t\t";
                // line 66
                if ($this->getAttribute($context["infolist"], "subtag", array())) {
                    // line 67
                    echo "\t\t\t\t\t<span class=\"g-small\">";
                    echo twig_escape_filter($this->env, $this->getAttribute($context["infolist"], "subtag", array()));
                    echo "</span>
\t\t\t\t\t";
                }
                // line 69
                echo "\t\t\t\t\t</div>
\t\t\t\t\t";
            }
            // line 71
            echo "
\t\t\t\t\t";
            // line 72
            if ($this->getAttribute($context["infolist"], "desc", array())) {
                // line 73
                echo "\t\t\t\t\t<div class=\"g-infolist-item-desc\">
\t\t\t\t\t\t";
                // line 74
                if (($this->getAttribute($context["infolist"], "textstyle", array()) == "large")) {
                    // line 75
                    echo "\t\t\t\t\t\t<div class=\"g-large\">
\t\t\t\t\t\t";
                }
                // line 77
                echo "\t\t\t\t\t\t";
                echo $this->getAttribute($context["infolist"], "desc", array());
                echo "
\t\t\t\t\t\t";
                // line 78
                if (($this->getAttribute($context["infolist"], "textstyle", array()) == "large")) {
                    // line 79
                    echo "\t\t\t\t\t\t</div>
\t\t\t\t\t\t";
                }
                // line 81
                echo "\t\t\t\t\t</div>
\t\t\t\t\t";
            }
            // line 83
            echo "\t\t\t\t\t
\t\t\t\t\t";
            // line 84
            if (($this->getAttribute($context["infolist"], "link", array()) && $this->getAttribute($context["infolist"], "label", array()))) {
                // line 85
                echo "\t\t\t\t\t<div class=\"g-infolist-link\">
\t\t\t\t\t\t<a href=\"";
                // line 86
                echo twig_escape_filter($this->env, $this->getAttribute($context["infolist"], "link", array()));
                echo "\" class=\"button ";
                echo twig_escape_filter($this->env, $this->getAttribute($context["infolist"], "readmoreclass", array()));
                echo "\">";
                if ($this->getAttribute($context["infolist"], "icon", array())) {
                    echo "<i class=\"";
                    echo twig_escape_filter($this->env, $this->getAttribute($context["infolist"], "icon", array()));
                    echo "\"></i>";
                }
                // line 87
                echo "\t\t\t\t\t\t\t";
                echo twig_escape_filter($this->env, $this->getAttribute($context["infolist"], "label", array()));
                echo "
\t\t\t\t\t\t</a>
\t\t\t\t\t</div>
\t\t\t\t\t";
            }
            // line 91
            echo "\t\t\t\t</div>
\t\t\t\t
\t\t\t\t";
            // line 93
            if (($this->getAttribute($context["infolist"], "image", array()) && ($this->getAttribute($context["infolist"], "imageloc", array()) == "right"))) {
                // line 94
                echo "\t\t\t\t";
                echo twig_escape_filter($this->env, (isset($context["imagedata"]) ? $context["imagedata"] : null), "html", null, true);
                echo "
\t\t\t\t";
            }
            // line 96
            echo "\t\t\t</div>
\t\t";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['infolist'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 98
        echo "
\t</div>

";
    }

    public function getTemplateName()
    {
        return "@particles/infolist.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  309 => 98,  302 => 96,  296 => 94,  294 => 93,  290 => 91,  282 => 87,  272 => 86,  269 => 85,  267 => 84,  264 => 83,  260 => 81,  256 => 79,  254 => 78,  249 => 77,  245 => 75,  243 => 74,  240 => 73,  238 => 72,  235 => 71,  231 => 69,  225 => 67,  223 => 66,  219 => 64,  215 => 63,  211 => 62,  209 => 61,  205 => 60,  202 => 59,  196 => 58,  193 => 57,  191 => 56,  188 => 55,  186 => 54,  183 => 53,  179 => 51,  175 => 49,  173 => 48,  170 => 47,  166 => 46,  164 => 45,  160 => 44,  157 => 43,  151 => 42,  149 => 41,  146 => 40,  142 => 39,  140 => 38,  133 => 37,  131 => 36,  125 => 35,  122 => 34,  116 => 32,  114 => 31,  111 => 30,  107 => 28,  103 => 26,  101 => 25,  96 => 24,  89 => 19,  87 => 18,  75 => 17,  73 => 16,  65 => 14,  61 => 13,  58 => 12,  52 => 10,  50 => 9,  43 => 7,  40 => 6,  34 => 5,  31 => 4,  28 => 3,  11 => 1,);
    }
}
