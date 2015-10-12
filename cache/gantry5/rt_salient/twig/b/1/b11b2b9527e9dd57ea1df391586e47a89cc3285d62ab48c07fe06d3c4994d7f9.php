<?php

/* @nucleus/content/position.html.twig */
class __TwigTemplate_b11b2b9527e9dd57ea1df391586e47a89cc3285d62ab48c07fe06d3c4994d7f9 extends Twig_Template
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
        try {            // line 2
            echo "
    ";
            // line 3
            $context["enabled"] = $this->getAttribute($this->getAttribute((isset($context["gantry"]) ? $context["gantry"] : null), "config", array()), "get", array(0 => (("particles." . $this->getAttribute((isset($context["segment"]) ? $context["segment"] : null), "type", array())) . ".enabled"), 1 => 1), "method");
            // line 4
            echo "    ";
            $context["particle"] = $this->getAttribute($this->getAttribute((isset($context["gantry"]) ? $context["gantry"] : null), "config", array()), "getJoined", array(0 => ("particles." . $this->getAttribute((isset($context["segment"]) ? $context["segment"] : null), "type", array())), 1 => $this->getAttribute((isset($context["segment"]) ? $context["segment"] : null), "attributes", array())), "method");
            // line 5
            echo "
    ";
            // line 6
            ob_start();
            // line 7
            echo "        ";
            if (((isset($context["enabled"]) ? $context["enabled"] : null) && ((null === $this->getAttribute($this->getAttribute((isset($context["segment"]) ? $context["segment"] : null), "attributes", array()), "enabled", array())) || $this->getAttribute($this->getAttribute((isset($context["segment"]) ? $context["segment"] : null), "attributes", array()), "enabled", array())))) {
                // line 8
                echo "            ";
                $this->loadTemplate(array(0 => (("particles/" . (($this->getAttribute((isset($context["segment"]) ? $context["segment"] : null), "subtype", array(), "any", true, true)) ? (_twig_default_filter($this->getAttribute((isset($context["segment"]) ? $context["segment"] : null), "subtype", array()), "position")) : ("position"))) . ".html.twig"), 1 => (("@particles/" . (($this->getAttribute(                // line 9
(isset($context["segment"]) ? $context["segment"] : null), "subtype", array(), "any", true, true)) ? (_twig_default_filter($this->getAttribute((isset($context["segment"]) ? $context["segment"] : null), "subtype", array()), "position")) : ("position"))) . ".html.twig")), "@nucleus/content/position.html.twig", 8)->display(array("gantry" => (isset($context["gantry"]) ? $context["gantry"] : null), "site" => (isset($context["site"]) ? $context["site"] : null), "page" => $this->getAttribute((isset($context["gantry"]) ? $context["gantry"] : null), "page", array()), "particle" => (isset($context["particle"]) ? $context["particle"] : null)));
                // line 10
                echo "        ";
            }
            // line 11
            echo "    ";
            $context["html"] = ('' === $tmp = ob_get_clean()) ? '' : new Twig_Markup($tmp, $this->env->getCharset());
            // line 12
            echo "
    ";
            // line 13
            if (trim((isset($context["html"]) ? $context["html"] : null))) {
                // line 14
                echo "        <div class=\"g-content";
                echo twig_escape_filter($this->env, (($this->getAttribute((isset($context["segment"]) ? $context["segment"] : null), "classes", array())) ? ((" " . twig_escape_filter($this->env, twig_join_filter($this->getAttribute((isset($context["segment"]) ? $context["segment"] : null), "classes", array()), " ")))) : ("")), "html", null, true);
                echo "\">
            ";
                // line 15
                echo (isset($context["html"]) ? $context["html"] : null);
                echo "
        </div>
    ";
            }
            // line 18
            echo "
";
        } catch (\Exception $e) {
            if ($context['gantry']->debug()) throw $e;
            $context['e'] = $e;
            // line 20
            echo "    <div class=\"alert alert-error\"><strong>Error</strong> while rendering ";
            echo twig_escape_filter($this->env, (($this->getAttribute((isset($context["segment"]) ? $context["segment"] : null), "subtype", array(), "any", true, true)) ? (_twig_default_filter($this->getAttribute((isset($context["segment"]) ? $context["segment"] : null), "subtype", array()), "position")) : ("position")), "html", null, true);
            echo ".</div>
";
        }
    }

    public function getTemplateName()
    {
        return "@nucleus/content/position.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  68 => 20,  62 => 18,  56 => 15,  51 => 14,  49 => 13,  46 => 12,  43 => 11,  40 => 10,  38 => 9,  36 => 8,  33 => 7,  31 => 6,  28 => 5,  25 => 4,  23 => 3,  20 => 2,  19 => 1,);
    }
}
