<?php

/* @nucleus/content/particle.html.twig */
class __TwigTemplate_8481b886c3eac2e4155749f262c145e8e30a31387fcb2ef50ce59b54464cb35d extends Twig_Template
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
            echo "    ";
            if ((isset($context["noConfig"]) ? $context["noConfig"] : null)) {
                // line 3
                echo "        ";
                $context["enabled"] = true;
                // line 4
                echo "        ";
                $context["particle"] = $this->getAttribute((isset($context["segment"]) ? $context["segment"] : null), "attributes", array());
                // line 5
                echo "    ";
            } else {
                // line 6
                echo "        ";
                $context["enabled"] = $this->getAttribute($this->getAttribute((isset($context["gantry"]) ? $context["gantry"] : null), "config", array()), "get", array(0 => (("particles." . $this->getAttribute((isset($context["segment"]) ? $context["segment"] : null), "subtype", array())) . ".enabled"), 1 => 1), "method");
                // line 7
                echo "        ";
                $context["particle"] = $this->getAttribute($this->getAttribute((isset($context["gantry"]) ? $context["gantry"] : null), "config", array()), "getJoined", array(0 => ("particles." . $this->getAttribute((isset($context["segment"]) ? $context["segment"] : null), "subtype", array())), 1 => $this->getAttribute((isset($context["segment"]) ? $context["segment"] : null), "attributes", array())), "method");
                // line 8
                echo "    ";
            }
            // line 9
            echo "
    ";
            // line 10
            ob_start();
            // line 11
            echo "        ";
            if (((isset($context["enabled"]) ? $context["enabled"] : null) && ((null === $this->getAttribute($this->getAttribute((isset($context["segment"]) ? $context["segment"] : null), "attributes", array()), "enabled", array())) || $this->getAttribute($this->getAttribute((isset($context["segment"]) ? $context["segment"] : null), "attributes", array()), "enabled", array())))) {
                // line 12
                echo "            ";
                try {
                    $this->loadTemplate(array(0 => (("particles/" . $this->getAttribute((isset($context["segment"]) ? $context["segment"] : null), "subtype", array())) . ".html.twig"), 1 => (("@particles/" . $this->getAttribute(                    // line 13
(isset($context["segment"]) ? $context["segment"] : null), "subtype", array())) . ".html.twig")), "@nucleus/content/particle.html.twig", 12)->display(array_merge($context, array("gantry" =>                     // line 14
(isset($context["gantry"]) ? $context["gantry"] : null), "particle" => (isset($context["particle"]) ? $context["particle"] : null))));
                } catch (Twig_Error_Loader $e) {
                    // ignore missing template
                }

                // line 15
                echo "        ";
            }
            // line 16
            echo "    ";
            $context["html"] = ('' === $tmp = ob_get_clean()) ? '' : new Twig_Markup($tmp, $this->env->getCharset());
            // line 17
            echo "
    ";
            // line 18
            if (trim((isset($context["html"]) ? $context["html"] : null))) {
                // line 19
                echo "    <div class=\"";
                echo (( !(isset($context["inContent"]) ? $context["inContent"] : null)) ? ("g-content") : (""));
                echo twig_escape_filter($this->env, (($this->getAttribute((isset($context["segment"]) ? $context["segment"] : null), "classes", array())) ? ((" " . twig_escape_filter($this->env, twig_join_filter($this->getAttribute((isset($context["segment"]) ? $context["segment"] : null), "classes", array()), " ")))) : ("")), "html", null, true);
                echo "\">
        ";
                // line 20
                echo (isset($context["html"]) ? $context["html"] : null);
                echo "
    </div>
    ";
            }
            // line 23
            echo "
";
        } catch (\Exception $e) {
            if ($context['gantry']->debug()) throw $e;
            $context['e'] = $e;
            // line 25
            echo "    <div class=\"alert alert-error\"><strong>Error</strong> while rendering ";
            echo twig_escape_filter($this->env, $this->getAttribute((isset($context["segment"]) ? $context["segment"] : null), "subtype", array()), "html", null, true);
            echo " particle.</div>
";
        }
    }

    public function getTemplateName()
    {
        return "@nucleus/content/particle.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  88 => 25,  82 => 23,  76 => 20,  70 => 19,  68 => 18,  65 => 17,  62 => 16,  59 => 15,  53 => 14,  52 => 13,  49 => 12,  46 => 11,  44 => 10,  41 => 9,  38 => 8,  35 => 7,  32 => 6,  29 => 5,  26 => 4,  23 => 3,  20 => 2,  19 => 1,);
    }
}
