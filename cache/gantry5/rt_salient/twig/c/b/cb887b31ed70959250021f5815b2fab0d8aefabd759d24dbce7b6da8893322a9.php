<?php

/* @nucleus/layout/container.html.twig */
class __TwigTemplate_cb887b31ed70959250021f5815b2fab0d8aefabd759d24dbce7b6da8893322a9 extends Twig_Template
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
        ob_start();
        // line 2
        echo "    ";
        $context['_parent'] = (array) $context;
        $context['_seq'] = twig_ensure_traversable((isset($context["segments"]) ? $context["segments"] : null));
        $context['loop'] = array(
          'parent' => $context['_parent'],
          'index0' => 0,
          'index'  => 1,
          'first'  => true,
        );
        if (is_array($context['_seq']) || (is_object($context['_seq']) && $context['_seq'] instanceof Countable)) {
            $length = count($context['_seq']);
            $context['loop']['revindex0'] = $length - 1;
            $context['loop']['revindex'] = $length;
            $context['loop']['length'] = $length;
            $context['loop']['last'] = 1 === $length;
        }
        foreach ($context['_seq'] as $context["_key"] => $context["segment"]) {
            // line 3
            echo "        ";
            $this->loadTemplate((("@nucleus/layout/" . $this->getAttribute($context["segment"], "type", array())) . ".html.twig"), "@nucleus/layout/container.html.twig", 3)->display(array_merge($context, array("segments" => $this->getAttribute($context["segment"], "children", array()))));
            // line 4
            echo "    ";
            ++$context['loop']['index0'];
            ++$context['loop']['index'];
            $context['loop']['first'] = false;
            if (isset($context['loop']['length'])) {
                --$context['loop']['revindex0'];
                --$context['loop']['revindex'];
                $context['loop']['last'] = 0 === $context['loop']['revindex0'];
            }
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['segment'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        $context["html"] = ('' === $tmp = ob_get_clean()) ? '' : new Twig_Markup($tmp, $this->env->getCharset());
        // line 6
        echo "
";
        // line 7
        if (trim((isset($context["html"]) ? $context["html"] : null))) {
            // line 8
            echo "    ";
            $context["classes"] = (($this->getAttribute($this->getAttribute((isset($context["segment"]) ? $context["segment"] : null), "attributes", array()), "class", array())) ? ((" " . twig_escape_filter($this->env, $this->getAttribute($this->getAttribute((isset($context["segment"]) ? $context["segment"] : null), "attributes", array()), "class", array())))) : (""));
            // line 9
            echo "    ";
            $context["attr_extra"] = "";
            // line 10
            echo "
    ";
            // line 11
            if ($this->getAttribute($this->getAttribute((isset($context["segment"]) ? $context["segment"] : null), "attributes", array()), "extra", array())) {
                // line 12
                echo "        ";
                $context['_parent'] = (array) $context;
                $context['_seq'] = twig_ensure_traversable($this->getAttribute($this->getAttribute((isset($context["segment"]) ? $context["segment"] : null), "attributes", array()), "extra", array()));
                foreach ($context['_seq'] as $context["_key"] => $context["attributes"]) {
                    // line 13
                    echo "            ";
                    $context['_parent'] = (array) $context;
                    $context['_seq'] = twig_ensure_traversable($context["attributes"]);
                    foreach ($context['_seq'] as $context["key"] => $context["value"]) {
                        // line 14
                        echo "                ";
                        $context["attr_extra"] = ((((((isset($context["attr_extra"]) ? $context["attr_extra"] : null) . " ") . twig_escape_filter($this->env, $context["key"])) . "=\"") . twig_escape_filter($this->env, $context["value"], "html_attr")) . "\"");
                        // line 15
                        echo "            ";
                    }
                    $_parent = $context['_parent'];
                    unset($context['_seq'], $context['_iterated'], $context['key'], $context['value'], $context['_parent'], $context['loop']);
                    $context = array_intersect_key($context, $_parent) + $_parent;
                    // line 16
                    echo "        ";
                }
                $_parent = $context['_parent'];
                unset($context['_seq'], $context['_iterated'], $context['_key'], $context['attributes'], $context['_parent'], $context['loop']);
                $context = array_intersect_key($context, $_parent) + $_parent;
                // line 17
                echo "    ";
            }
            // line 18
            echo "
    ";
            // line 19
            if (($this->getAttribute($this->getAttribute((isset($context["segment"]) ? $context["segment"] : null), "attributes", array(), "any", false, true), "boxed", array(), "any", true, true) &&  !$this->getAttribute($this->getAttribute((isset($context["segment"]) ? $context["segment"] : null), "attributes", array()), "boxed", array()))) {
                // line 20
                echo "        ";
                ob_start();
                // line 21
                echo "        <div class=\"g-container\">";
                echo (isset($context["html"]) ? $context["html"] : null);
                echo "</div>
        ";
                $context["html"] = ('' === $tmp = ob_get_clean()) ? '' : new Twig_Markup($tmp, $this->env->getCharset());
                // line 23
                echo "    ";
            }
            // line 24
            echo "
    ";
            // line 25
            ob_start();
            // line 26
            echo "    <section";
            echo (isset($context["attr_extra"]) ? $context["attr_extra"] : null);
            echo " class=\"g-wrapper";
            echo twig_escape_filter($this->env, (isset($context["classes"]) ? $context["classes"] : null), "html", null, true);
            echo "\">
        ";
            // line 27
            echo (isset($context["html"]) ? $context["html"] : null);
            echo "
    </section>
    ";
            $context["html"] = ('' === $tmp = ob_get_clean()) ? '' : new Twig_Markup($tmp, $this->env->getCharset());
            // line 30
            echo "
    ";
            // line 31
            if ($this->getAttribute($this->getAttribute((isset($context["segment"]) ? $context["segment"] : null), "attributes", array()), "boxed", array())) {
                // line 32
                echo "        <div class=\"g-container\">";
                echo (isset($context["html"]) ? $context["html"] : null);
                echo "</div>
    ";
            } else {
                // line 34
                echo "        ";
                echo (isset($context["html"]) ? $context["html"] : null);
                echo "
    ";
            }
        }
    }

    public function getTemplateName()
    {
        return "@nucleus/layout/container.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  147 => 34,  141 => 32,  139 => 31,  136 => 30,  130 => 27,  123 => 26,  121 => 25,  118 => 24,  115 => 23,  109 => 21,  106 => 20,  104 => 19,  101 => 18,  98 => 17,  92 => 16,  86 => 15,  83 => 14,  78 => 13,  73 => 12,  71 => 11,  68 => 10,  65 => 9,  62 => 8,  60 => 7,  57 => 6,  42 => 4,  39 => 3,  21 => 2,  19 => 1,);
    }
}
