<?php

/* forms/fields/collection/keyvalue.html.twig */
class __TwigTemplate_66f24563a17b7e1b4c319f27ae5908d5c9242dcece02deb6780fc4f26f45a801 extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        $this->blocks = array(
            'input' => array($this, 'block_input'),
        );
    }

    protected function doGetParent(array $context)
    {
        // line 1
        return $this->loadTemplate((("forms/" . ((array_key_exists("layout", $context)) ? (_twig_default_filter((isset($context["layout"]) ? $context["layout"] : null), "field")) : ("field"))) . ".html.twig"), "forms/fields/collection/keyvalue.html.twig", 1);
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        $this->getParent($context)->display($context, array_merge($this->blocks, $blocks));
    }

    // line 3
    public function block_input($context, array $blocks = array())
    {
        // line 4
        echo "    <div class=\"g-keyvalue-field";
        if ($this->getAttribute((isset($context["field"]) ? $context["field"] : null), "size", array())) {
            echo " g-keyvalue-";
            echo twig_escape_filter($this->env, $this->getAttribute((isset($context["field"]) ? $context["field"] : null), "size", array()), "html", null, true);
        }
        echo "\">
        <ul>
        ";
        // line 6
        if ((isset($context["value"]) ? $context["value"] : null)) {
            // line 7
            echo "        ";
            $context['_parent'] = (array) $context;
            $context['_seq'] = twig_ensure_traversable((isset($context["value"]) ? $context["value"] : null));
            foreach ($context['_seq'] as $context["_key"] => $context["data"]) {
                // line 8
                echo "            ";
                $context['_parent'] = (array) $context;
                $context['_seq'] = twig_ensure_traversable($context["data"]);
                foreach ($context['_seq'] as $context["key"] => $context["val"]) {
                    // line 9
                    echo "            <li data-keyvalue-item>
                <i class=\"fa fa-reorder font-small item-reorder\"></i>
                <div class=\"g-keyvalue-wrapper\">
                    <input class=\"g-keyvalue-input-key\" type=\"text\" data-keyvalue-key=\"";
                    // line 12
                    echo twig_escape_filter($this->env, $context["key"]);
                    echo "\" value=\"";
                    echo twig_escape_filter($this->env, $context["key"]);
                    echo "\" ";
                    if ($this->getAttribute((isset($context["field"]) ? $context["field"] : null), "key_placeholder", array(), "any", true, true)) {
                        echo "placeholder=\"";
                        echo twig_escape_filter($this->env, $this->getAttribute((isset($context["field"]) ? $context["field"] : null), "key_placeholder", array()));
                        echo "\"";
                    }
                    echo " />
                    <i class=\"g-keyvalue-sep fa fa-fw fa-arrow-right\"></i>
                    <input class=\"g-keyvalue-input-value\" type=\"text\" data-keyvalue-value=\"\" value=\"";
                    // line 14
                    echo twig_escape_filter($this->env, $context["val"]);
                    echo "\" ";
                    if ($this->getAttribute((isset($context["field"]) ? $context["field"] : null), "value_placeholder", array(), "any", true, true)) {
                        echo "placeholder=\"";
                        echo twig_escape_filter($this->env, $this->getAttribute((isset($context["field"]) ? $context["field"] : null), "value_placeholder", array()));
                        echo "\"";
                    }
                    echo " />
                </div>
                <i class=\"fa fa-fw fa-trash font-small\" data-keyvalue-remove></i>
            </li>
            ";
                }
                $_parent = $context['_parent'];
                unset($context['_seq'], $context['_iterated'], $context['key'], $context['val'], $context['_parent'], $context['loop']);
                $context = array_intersect_key($context, $_parent) + $_parent;
                // line 19
                echo "        ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['data'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 20
            echo "        ";
        }
        // line 21
        echo "        </ul>

        <span class=\"button button-simple\" data-keyvalue-addnew=\"\" title=\"Add new item\"><i class=\"fa fa-plus font-small\"></i></span>
    </div>
    <ul style=\"display: none\">
        <li data-keyvalue-nosort data-keyvalue-template>
            <i class=\"fa fa-reorder font-small item-reorder\"></i>
            <div class=\"g-keyvalue-wrapper\">
                <input class=\"g-keyvalue-input-key\" type=\"text\" data-keyvalue-key=\"\" value=\"\" ";
        // line 29
        if ($this->getAttribute((isset($context["field"]) ? $context["field"] : null), "key_placeholder", array(), "any", true, true)) {
            echo "placeholder=\"";
            echo twig_escape_filter($this->env, $this->getAttribute((isset($context["field"]) ? $context["field"] : null), "key_placeholder", array()));
            echo "\"";
        }
        echo " />
                <i class=\"g-keyvalue-sep fa fa-fw fa-arrow-right\"></i>
                <input class=\"g-keyvalue-input-value\" type=\"text\" data-keyvalue-value=\"\" value=\"\" ";
        // line 31
        if ($this->getAttribute((isset($context["field"]) ? $context["field"] : null), "value_placeholder", array(), "any", true, true)) {
            echo "placeholder=\"";
            echo twig_escape_filter($this->env, $this->getAttribute((isset($context["field"]) ? $context["field"] : null), "value_placeholder", array()));
            echo "\"";
        }
        echo " />
            </div>
            <i class=\"fa fa-fw fa-trash font-small\" data-keyvalue-remove></i>
        </li>
    </ul>
    <input type=\"hidden\" data-keyvalue-data data-keyvalue-exclude=\"";
        // line 36
        echo twig_escape_filter($this->env, twig_jsonencode_filter((($this->getAttribute((isset($context["field"]) ? $context["field"] : null), "exclude", array(), "any", true, true)) ? (_twig_default_filter($this->getAttribute((isset($context["field"]) ? $context["field"] : null), "exclude", array()), array())) : (array()))), "html_attr");
        echo "\" name=\"";
        echo twig_escape_filter($this->env, $this->env->getExtension('GantryTwig')->fieldNameFilter((((isset($context["scope"]) ? $context["scope"] : null) . (isset($context["name"]) ? $context["name"] : null)) . "._json")));
        echo "\"  value=\"";
        echo twig_escape_filter($this->env, twig_jsonencode_filter(((array_key_exists("value", $context)) ? (_twig_default_filter((isset($context["value"]) ? $context["value"] : null), array())) : (array())), twig_constant("JSON_UNESCAPED_SLASHES")), "html_attr");
        echo "\" />
";
    }

    public function getTemplateName()
    {
        return "forms/fields/collection/keyvalue.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  126 => 36,  114 => 31,  105 => 29,  95 => 21,  92 => 20,  86 => 19,  69 => 14,  56 => 12,  51 => 9,  46 => 8,  41 => 7,  39 => 6,  30 => 4,  27 => 3,  18 => 1,);
    }
}
