<?php

/* @particles/testimonial.html.twig */
class __TwigTemplate_f0b1beefd21922e59e6aa7e1060c1c9eb0c7ee66cd60227a0216c078b44e7740 extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        // line 1
        $this->parent = $this->loadTemplate("@nucleus/partials/particle.html.twig", "@particles/testimonial.html.twig", 1);
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
        echo "\t<div class=\"g-testimonials ";
        echo twig_escape_filter($this->env, $this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "cols", array()));
        echo " ";
        echo twig_escape_filter($this->env, $this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "class", array()));
        echo "\">
\t\t";
        // line 5
        if ($this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "title", array())) {
            // line 6
            echo "\t\t<h3 class=\"g-title\">";
            echo $this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "title", array());
            echo "</h3>
\t\t";
        }
        // line 8
        echo "\t\t
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
        echo "\t\t
\t\t";
        // line 13
        $context['_parent'] = (array) $context;
        $context['_seq'] = twig_ensure_traversable($this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "testimonials", array()));
        foreach ($context['_seq'] as $context["_key"] => $context["testimonial"]) {
            // line 14
            echo "\t\t<div class=\"g-testimonial-item\">
\t\t\t";
            // line 15
            if ($this->getAttribute($context["testimonial"], "img", array())) {
                // line 16
                echo "\t\t\t<div class=\"g-testimonial-author-img\">
\t\t\t\t<img src=\"";
                // line 17
                echo twig_escape_filter($this->env, $this->env->getExtension('GantryTwig')->urlFunc(twig_escape_filter($this->env, $this->getAttribute($context["testimonial"], "img", array()))), "html", null, true);
                echo "\" alt=\"";
                echo twig_escape_filter($this->env, $this->getAttribute($context["testimonial"], "author", array()));
                echo "\">
\t\t\t</div>
\t\t\t";
            }
            // line 20
            echo "\t\t\t";
            if ($this->getAttribute($context["testimonial"], "content", array())) {
                // line 21
                echo "\t\t\t<div class=\"g-testimonial-content\">
\t\t\t\t<p>";
                // line 22
                echo $this->getAttribute($context["testimonial"], "content", array());
                echo "</p>
\t\t\t\t";
                // line 23
                if ($this->getAttribute($context["testimonial"], "author", array())) {
                    // line 24
                    echo "\t\t\t\t<div class=\"g-testimonial-author-name\">
\t\t\t\t\t<span>-</span><span>";
                    // line 25
                    echo twig_escape_filter($this->env, $this->getAttribute($context["testimonial"], "author", array()));
                    echo "</span>
\t\t\t\t</div>
\t\t\t\t";
                }
                // line 28
                echo "\t\t\t\t";
                if ($this->getAttribute($context["testimonial"], "company", array())) {
                    // line 29
                    echo "\t\t\t\t<div class=\"g-testimonial-author-company\">
\t\t\t\t\t<span><a href=\"";
                    // line 30
                    echo twig_escape_filter($this->env, $this->getAttribute($context["testimonial"], "companyurl", array()));
                    echo "\">";
                    echo twig_escape_filter($this->env, $this->getAttribute($context["testimonial"], "company", array()));
                    echo "</a></span>
\t\t\t\t</div>
\t\t\t\t";
                }
                // line 33
                echo "\t\t\t</div>
\t\t\t";
            }
            // line 35
            echo "\t\t</div>
\t\t";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['testimonial'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 37
        echo "\t</div>
";
    }

    public function getTemplateName()
    {
        return "@particles/testimonial.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  126 => 37,  119 => 35,  115 => 33,  107 => 30,  104 => 29,  101 => 28,  95 => 25,  92 => 24,  90 => 23,  86 => 22,  83 => 21,  80 => 20,  72 => 17,  69 => 16,  67 => 15,  64 => 14,  60 => 13,  57 => 12,  51 => 10,  49 => 9,  46 => 8,  40 => 6,  38 => 5,  31 => 4,  28 => 3,  11 => 1,);
    }
}
