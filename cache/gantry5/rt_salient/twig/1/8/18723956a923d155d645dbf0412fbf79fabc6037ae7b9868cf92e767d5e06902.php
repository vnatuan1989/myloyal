<?php

/* @particles/menu.html.twig */
class __TwigTemplate_18723956a923d155d645dbf0412fbf79fabc6037ae7b9868cf92e767d5e06902 extends Twig_Template
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
            $context["menu"] = $this->getAttribute($this->getAttribute((isset($context["gantry"]) ? $context["gantry"] : null), "menu", array()), "instance", array(0 => (isset($context["particle"]) ? $context["particle"] : null)), "method");
        } catch (\Exception $e) {
            if ($context['gantry']->debug()) throw $e;
            $context['e'] = $e;
            // line 4
            echo "<div class=\"alert alert-error\">";
            echo twig_escape_filter($this->env, $this->getAttribute((isset($context["e"]) ? $context["e"] : null), "getMessage", array()), "html", null, true);
            echo "</div>
";
        }
        // line 6
        echo "
";
        // line 16
        echo "
";
        // line 26
        echo "
";
        // line 35
        echo "
";
        // line 80
        echo "
";
        // line 97
        echo "
";
        // line 104
        echo "
";
        // line 115
        echo "
";
        // line 116
        if ($this->getAttribute($this->getAttribute((isset($context["menu"]) ? $context["menu"] : null), "root", array()), "count", array(), "method")) {
            // line 117
            echo "<nav class=\"g-main-nav\" role=\"navigation\"";
            echo (($this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "mobileTarget", array())) ? (" data-g-mobile-target") : (""));
            echo ">
    <ul class=\"g-toplevel\">
        ";
            // line 119
            echo $this->getAttribute($this, "displayItems", array(0 => $this->getAttribute((isset($context["menu"]) ? $context["menu"] : null), "root", array()), 1 => (isset($context["menu"]) ? $context["menu"] : null), 2 => (isset($context["gantry"]) ? $context["gantry"] : null), 3 => null, 4 => (isset($context["particle"]) ? $context["particle"] : null)), "method");
            echo "
    </ul>
</nav>
";
        }
    }

    // line 7
    public function getgetCustomWidth($__item__ = null, $__root__ = null, $__mode__ = null)
    {
        $context = $this->env->mergeGlobals(array(
            "item" => $__item__,
            "root" => $__root__,
            "mode" => $__mode__,
            "varargs" => func_num_args() > 3 ? array_slice(func_get_args(), 3) : array(),
        ));

        $blocks = array();

        ob_start();
        try {
            // line 8
            if ((((($this->getAttribute((isset($context["item"]) ? $context["item"] : null), "width", array(), "any", true, true)) ? (_twig_default_filter($this->getAttribute((isset($context["item"]) ? $context["item"] : null), "width", array()), "auto")) : ("auto")) != "auto") &&  !(($this->getAttribute((isset($context["root"]) ? $context["root"] : null), "getDropdown", array(), "method") == "fullwidth") && ($this->getAttribute((isset($context["item"]) ? $context["item"] : null), "level", array()) > 1)))) {
                // line 9
                if (((isset($context["mode"]) ? $context["mode"] : null) == "item")) {
                    // line 10
                    echo "style=\"position: relative;\"";
                } elseif ((                // line 11
(isset($context["mode"]) ? $context["mode"] : null) == "submenu")) {
                    // line 12
                    echo "style=\"width:";
                    echo twig_escape_filter($this->env, $this->getAttribute((isset($context["item"]) ? $context["item"] : null), "width", array()));
                    echo ";\" data-g-item-width=\"";
                    echo twig_escape_filter($this->env, $this->getAttribute((isset($context["item"]) ? $context["item"] : null), "width", array()));
                    echo "\"";
                }
            }
        } catch (Exception $e) {
            ob_end_clean();

            throw $e;
        }

        return ('' === $tmp = ob_get_clean()) ? '' : new Twig_Markup($tmp, $this->env->getCharset());
    }

    // line 17
    public function getdisplayParticle($__item__ = null, $__gantry__ = null, $__particle__ = null)
    {
        $context = $this->env->mergeGlobals(array(
            "item" => $__item__,
            "gantry" => $__gantry__,
            "particle" => $__particle__,
            "varargs" => func_num_args() > 3 ? array_slice(func_get_args(), 3) : array(),
        ));

        $blocks = array();

        ob_start();
        try {
            // line 18
            echo "    ";
            if (((null === $this->getAttribute($this->getAttribute($this->getAttribute((isset($context["item"]) ? $context["item"] : null), "options", array()), "particle", array()), "enabled", array())) || $this->getAttribute($this->getAttribute($this->getAttribute((isset($context["item"]) ? $context["item"] : null), "options", array()), "particle", array()), "enabled", array()))) {
                // line 19
                echo "        ";
                $context["classes"] = $this->getAttribute($this->getAttribute($this->getAttribute((isset($context["item"]) ? $context["item"] : null), "options", array()), "block", array()), "class", array());
                // line 20
                echo "        <div class=\"menu-item-particle";
                echo twig_escape_filter($this->env, (((isset($context["classes"]) ? $context["classes"] : null)) ? ((" " . (isset($context["classes"]) ? $context["classes"] : null))) : ("")), "html", null, true);
                echo "\">
        ";
                // line 21
                try {
                    $this->loadTemplate(array(0 => (("particles/" . $this->getAttribute((isset($context["item"]) ? $context["item"] : null), "particle", array())) . ".html.twig"), 1 => (("@particles/" . $this->getAttribute((isset($context["item"]) ? $context["item"] : null), "particle", array())) . ".html.twig")), "@particles/menu.html.twig", 21)->display(array("gantry" =>                     // line 22
(isset($context["gantry"]) ? $context["gantry"] : null), "particle" => $this->getAttribute($this->getAttribute((isset($context["item"]) ? $context["item"] : null), "options", array()), "particle", array())));
                } catch (Twig_Error_Loader $e) {
                    // ignore missing template
                }

                // line 23
                echo "        </div>
    ";
            }
        } catch (Exception $e) {
            ob_end_clean();

            throw $e;
        }

        return ('' === $tmp = ob_get_clean()) ? '' : new Twig_Markup($tmp, $this->env->getCharset());
    }

    // line 27
    public function getdisplayTitle($__item__ = null, $__gantry__ = null, $__particle__ = null)
    {
        $context = $this->env->mergeGlobals(array(
            "item" => $__item__,
            "gantry" => $__gantry__,
            "particle" => $__particle__,
            "varargs" => func_num_args() > 3 ? array_slice(func_get_args(), 3) : array(),
        ));

        $blocks = array();

        ob_start();
        try {
            // line 28
            echo "    ";
            if (( !$this->getAttribute((isset($context["item"]) ? $context["item"] : null), "icon_only", array()) ||  !($this->getAttribute((isset($context["item"]) ? $context["item"] : null), "image", array()) || $this->getAttribute((isset($context["item"]) ? $context["item"] : null), "icon", array())))) {
                // line 29
                echo "        <span class=\"g-menu-item-title\">";
                echo twig_escape_filter($this->env, $this->getAttribute((isset($context["item"]) ? $context["item"] : null), "title", array()));
                echo "</span>
        ";
                // line 30
                if ($this->getAttribute((isset($context["item"]) ? $context["item"] : null), "subtitle", array())) {
                    // line 31
                    echo "            <span class=\"g-menu-item-subtitle\">";
                    echo twig_escape_filter($this->env, $this->getAttribute((isset($context["item"]) ? $context["item"] : null), "subtitle", array()));
                    echo "</span>
        ";
                }
                // line 33
                echo "    ";
            }
        } catch (Exception $e) {
            ob_end_clean();

            throw $e;
        }

        return ('' === $tmp = ob_get_clean()) ? '' : new Twig_Markup($tmp, $this->env->getCharset());
    }

    // line 36
    public function getdisplayItem($__item__ = null, $__root__ = null, $__menu__ = null, $__gantry__ = null, $__particle__ = null)
    {
        $context = $this->env->mergeGlobals(array(
            "item" => $__item__,
            "root" => $__root__,
            "menu" => $__menu__,
            "gantry" => $__gantry__,
            "particle" => $__particle__,
            "varargs" => func_num_args() > 5 ? array_slice(func_get_args(), 5) : array(),
        ));

        $blocks = array();

        ob_start();
        try {
            // line 37
            echo "    ";
            $context["SELF"] = $this;
            // line 38
            echo "    ";
            if ($this->getAttribute((isset($context["item"]) ? $context["item"] : null), "visible", array())) {
                // line 39
                echo "        ";
                $context["title"] = (($this->getAttribute((isset($context["item"]) ? $context["item"] : null), "icon_only", array())) ? (((" title=\"" . twig_escape_filter($this->env, $this->getAttribute((isset($context["item"]) ? $context["item"] : null), "title", array()))) . "\"")) : (""));
                // line 40
                echo "        ";
                $context["active"] = (($this->getAttribute((isset($context["menu"]) ? $context["menu"] : null), "isActive", array(0 => (isset($context["item"]) ? $context["item"] : null)), "method")) ? (" active") : (""));
                // line 41
                echo "        ";
                $context["dropdown"] = ((($this->getAttribute((isset($context["item"]) ? $context["item"] : null), "level", array()) == 1)) ? ((" g-" . twig_escape_filter($this->env, $this->getAttribute((isset($context["item"]) ? $context["item"] : null), "getDropdown", array(), "method")))) : (""));
                // line 42
                echo "        ";
                $context["parent"] = (($this->getAttribute((isset($context["item"]) ? $context["item"] : null), "children", array())) ? (" g-parent") : (""));
                // line 43
                echo "        ";
                $context["target"] = ((($this->getAttribute((isset($context["item"]) ? $context["item"] : null), "target", array()) != "_self")) ? (((" target=\"" . twig_escape_filter($this->env, $this->getAttribute((isset($context["item"]) ? $context["item"] : null), "target", array()))) . "\"")) : (""));
                // line 44
                echo "
        <li class=\"g-menu-item g-menu-item-type-";
                // line 45
                echo twig_escape_filter($this->env, $this->getAttribute((isset($context["item"]) ? $context["item"] : null), "type", array()));
                echo " g-menu-item-";
                echo twig_escape_filter($this->env, $this->getAttribute((isset($context["item"]) ? $context["item"] : null), "id", array()));
                if ( !$this->getAttribute((isset($context["item"]) ? $context["item"] : null), "dropdown_hide", array())) {
                    echo (isset($context["parent"]) ? $context["parent"] : null);
                }
                echo (isset($context["active"]) ? $context["active"] : null);
                echo (isset($context["dropdown"]) ? $context["dropdown"] : null);
                echo " ";
                if (($this->getAttribute((isset($context["item"]) ? $context["item"] : null), "url", array()) && $this->getAttribute((isset($context["item"]) ? $context["item"] : null), "children", array()))) {
                    if ( !$this->getAttribute((isset($context["item"]) ? $context["item"] : null), "dropdown_hide", array())) {
                        echo "g-menu-item-link-parent";
                    }
                }
                echo " ";
                echo twig_escape_filter($this->env, _twig_default_filter(twig_escape_filter($this->env, $this->getAttribute((isset($context["item"]) ? $context["item"] : null), "class", array())), ""), "html", null, true);
                echo "\"";
                echo $context["SELF"]->getgetCustomWidth((isset($context["item"]) ? $context["item"] : null), (isset($context["root"]) ? $context["root"] : null), "item");
                if ((($this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "renderTitles", array(), "any", true, true)) ? (_twig_default_filter($this->getAttribute((isset($context["particle"]) ? $context["particle"] : null), "renderTitles", array()), 0)) : (0))) {
                    echo " title=\"";
                    echo twig_escape_filter($this->env, $this->getAttribute((isset($context["item"]) ? $context["item"] : null), "title", array()));
                    echo "\"";
                }
                echo ">
            ";
                // line 46
                if ($this->getAttribute((isset($context["item"]) ? $context["item"] : null), "url", array())) {
                    echo "<a class=\"g-menu-item-container";
                    echo twig_escape_filter($this->env, (($this->getAttribute((isset($context["item"]) ? $context["item"] : null), "anchor_class", array())) ? ((" " . $this->getAttribute((isset($context["item"]) ? $context["item"] : null), "anchor_class", array()))) : ("")), "html", null, true);
                    echo "\" href=\"";
                    echo twig_escape_filter($this->env, $this->getAttribute((isset($context["item"]) ? $context["item"] : null), "url", array()));
                    echo (($this->getAttribute((isset($context["item"]) ? $context["item"] : null), "hash", array())) ? (twig_escape_filter($this->env, $this->getAttribute((isset($context["item"]) ? $context["item"] : null), "hash", array()))) : (""));
                    echo "\"";
                    echo ((isset($context["title"]) ? $context["title"] : null) . (isset($context["target"]) ? $context["target"] : null));
                    echo ">
            ";
                } else {
                    // line 47
                    echo "<div class=\"g-menu-item-container";
                    echo twig_escape_filter($this->env, (($this->getAttribute((isset($context["item"]) ? $context["item"] : null), "anchor_class", array())) ? ((" " . $this->getAttribute((isset($context["item"]) ? $context["item"] : null), "anchor_class", array()))) : ("")), "html", null, true);
                    echo "\" data-g-menuparent=\"\">";
                }
                // line 48
                echo "                ";
                if ($this->getAttribute((isset($context["item"]) ? $context["item"] : null), "image", array())) {
                    // line 49
                    echo "                    <img src=\"";
                    echo twig_escape_filter($this->env, $this->env->getExtension('GantryTwig')->urlFunc($this->getAttribute((isset($context["item"]) ? $context["item"] : null), "image", array())));
                    echo "\" alt=\"";
                    echo twig_escape_filter($this->env, $this->getAttribute((isset($context["item"]) ? $context["item"] : null), "title", array()));
                    echo "\" />
                ";
                } elseif ($this->getAttribute(                // line 50
(isset($context["item"]) ? $context["item"] : null), "icon", array())) {
                    // line 51
                    echo "                    <i class=\"";
                    echo twig_escape_filter($this->env, $this->getAttribute((isset($context["item"]) ? $context["item"] : null), "icon", array()));
                    echo "\"></i>
                ";
                }
                // line 53
                echo "                ";
                if ($this->getAttribute((isset($context["item"]) ? $context["item"] : null), "url", array())) {
                    // line 54
                    echo "                    <span class=\"g-menu-item-content\">
                        ";
                    // line 55
                    echo $context["SELF"]->getdisplayTitle((isset($context["item"]) ? $context["item"] : null), (isset($context["gantry"]) ? $context["gantry"] : null), (isset($context["particle"]) ? $context["particle"] : null));
                    echo "
                    </span>
                    ";
                    // line 57
                    if (($this->getAttribute((isset($context["item"]) ? $context["item"] : null), "children", array()) &&  !$this->getAttribute((isset($context["item"]) ? $context["item"] : null), "dropdown_hide", array()))) {
                        // line 58
                        echo "<span class=\"g-menu-parent-indicator\" data-g-menuparent=\"\"></span>";
                    }
                    // line 60
                    echo "                ";
                } else {
                    // line 61
                    echo "                    ";
                    if (($this->getAttribute((isset($context["item"]) ? $context["item"] : null), "type", array()) == "particle")) {
                        // line 62
                        echo "                        ";
                        echo $context["SELF"]->getdisplayParticle((isset($context["item"]) ? $context["item"] : null), (isset($context["gantry"]) ? $context["gantry"] : null), (isset($context["particle"]) ? $context["particle"] : null));
                        echo "
                    ";
                    } elseif (($this->getAttribute(                    // line 63
(isset($context["item"]) ? $context["item"] : null), "type", array()) == "heading")) {
                        // line 64
                        echo "                        <span class=\"g-nav-header g-menu-item-content\"";
                        echo (isset($context["title"]) ? $context["title"] : null);
                        echo ">";
                        echo twig_escape_filter($this->env, $this->getAttribute((isset($context["item"]) ? $context["item"] : null), "title", array()));
                        echo "</span>
                    ";
                    } else {
                        // line 66
                        echo "                        <span class=\"g-separator g-menu-item-content\"";
                        echo (isset($context["title"]) ? $context["title"] : null);
                        echo ">";
                        echo $context["SELF"]->getdisplayTitle((isset($context["item"]) ? $context["item"] : null));
                        echo "</span>
                    ";
                    }
                    // line 68
                    echo "                        ";
                    if ($this->getAttribute((isset($context["item"]) ? $context["item"] : null), "children", array())) {
                        // line 69
                        echo "<span class=\"g-menu-parent-indicator\"></span>";
                    }
                    // line 71
                    echo "                ";
                }
                // line 72
                echo "            ";
                if ($this->getAttribute((isset($context["item"]) ? $context["item"] : null), "url", array())) {
                    echo "</a>
            ";
                } else {
                    // line 73
                    echo "</div>";
                }
                // line 74
                echo "            ";
                if ($this->getAttribute((isset($context["item"]) ? $context["item"] : null), "children", array())) {
                    // line 75
                    echo $context["SELF"]->getdisplaySubmenu((isset($context["item"]) ? $context["item"] : null), (isset($context["root"]) ? $context["root"] : null), (isset($context["menu"]) ? $context["menu"] : null), (isset($context["gantry"]) ? $context["gantry"] : null), (isset($context["particle"]) ? $context["particle"] : null));
                }
                // line 77
                echo "        </li>
    ";
            }
        } catch (Exception $e) {
            ob_end_clean();

            throw $e;
        }

        return ('' === $tmp = ob_get_clean()) ? '' : new Twig_Markup($tmp, $this->env->getCharset());
    }

    // line 81
    public function getdisplayContainers($__item__ = null, $__root__ = null, $__menu__ = null, $__gantry__ = null, $__particle__ = null)
    {
        $context = $this->env->mergeGlobals(array(
            "item" => $__item__,
            "root" => $__root__,
            "menu" => $__menu__,
            "gantry" => $__gantry__,
            "particle" => $__particle__,
            "varargs" => func_num_args() > 5 ? array_slice(func_get_args(), 5) : array(),
        ));

        $blocks = array();

        ob_start();
        try {
            // line 82
            echo "    ";
            $context["SELF"] = $this;
            // line 83
            echo "    <div class=\"g-grid\">
        ";
            // line 84
            $context["groups"] = ((($this->getAttribute((isset($context["item"]) ? $context["item"] : null), "getDropdown", array(), "method") == "standard")) ? (array(0 => (isset($context["item"]) ? $context["item"] : null))) : ($this->getAttribute((isset($context["item"]) ? $context["item"] : null), "groups", array())));
            // line 85
            echo "        ";
            $context['_parent'] = (array) $context;
            $context['_seq'] = twig_ensure_traversable((isset($context["groups"]) ? $context["groups"] : null));
            foreach ($context['_seq'] as $context["column"] => $context["items"]) {
                // line 86
                echo "        <div class=\"g-block ";
                echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('toGrid')->getCallable(), array($this->getAttribute((isset($context["item"]) ? $context["item"] : null), "columnWidth", array(0 => $context["column"]), "method"))));
                echo "\">
            <ul class=\"g-sublevel\">
                <li class=\"g-level-";
                // line 88
                echo twig_escape_filter($this->env, $this->getAttribute((isset($context["item"]) ? $context["item"] : null), "level", array()));
                echo " g-go-back\">
                    <a class=\"g-menu-item-container\" href=\"#\" data-g-menuparent=\"\"><span>Back</span></a>
                </li>
                ";
                // line 91
                echo $context["SELF"]->getdisplayItems($context["items"], (isset($context["menu"]) ? $context["menu"] : null), (isset($context["gantry"]) ? $context["gantry"] : null), (isset($context["root"]) ? $context["root"] : null));
                echo "
            </ul>
        </div>
        ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['column'], $context['items'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 95
            echo "    </div>
";
        } catch (Exception $e) {
            ob_end_clean();

            throw $e;
        }

        return ('' === $tmp = ob_get_clean()) ? '' : new Twig_Markup($tmp, $this->env->getCharset());
    }

    // line 98
    public function getdisplayItems($__items__ = null, $__menu__ = null, $__gantry__ = null, $__root__ = null, $__particle__ = null)
    {
        $context = $this->env->mergeGlobals(array(
            "items" => $__items__,
            "menu" => $__menu__,
            "gantry" => $__gantry__,
            "root" => $__root__,
            "particle" => $__particle__,
            "varargs" => func_num_args() > 5 ? array_slice(func_get_args(), 5) : array(),
        ));

        $blocks = array();

        ob_start();
        try {
            // line 99
            echo "    ";
            $context["SELF"] = $this;
            // line 100
            echo "    ";
            $context['_parent'] = (array) $context;
            $context['_seq'] = twig_ensure_traversable((isset($context["items"]) ? $context["items"] : null));
            foreach ($context['_seq'] as $context["_key"] => $context["item"]) {
                // line 101
                echo "        ";
                echo $context["SELF"]->getdisplayItem($context["item"], (isset($context["root"]) ? $context["root"] : null), (isset($context["menu"]) ? $context["menu"] : null), (isset($context["gantry"]) ? $context["gantry"] : null), (isset($context["particle"]) ? $context["particle"] : null));
                echo "
    ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['item'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
        } catch (Exception $e) {
            ob_end_clean();

            throw $e;
        }

        return ('' === $tmp = ob_get_clean()) ? '' : new Twig_Markup($tmp, $this->env->getCharset());
    }

    // line 105
    public function getdisplaySubmenu($__item__ = null, $__root__ = null, $__menu__ = null, $__gantry__ = null, $__particle__ = null)
    {
        $context = $this->env->mergeGlobals(array(
            "item" => $__item__,
            "root" => $__root__,
            "menu" => $__menu__,
            "gantry" => $__gantry__,
            "particle" => $__particle__,
            "varargs" => func_num_args() > 5 ? array_slice(func_get_args(), 5) : array(),
        ));

        $blocks = array();

        ob_start();
        try {
            // line 106
            echo "    ";
            $context["SELF"] = $this;
            // line 107
            echo "    ";
            if ( !$this->getAttribute((isset($context["item"]) ? $context["item"] : null), "dropdown_hide", array())) {
                // line 108
                echo "        <ul class=\"g-dropdown g-inactive ";
                echo twig_escape_filter($this->env, (($this->getAttribute($this->getAttribute((isset($context["gantry"]) ? $context["gantry"] : null), "config", array(), "any", false, true), "get", array(0 => "styles.menu.animation"), "method", true, true)) ? (_twig_default_filter($this->getAttribute($this->getAttribute((isset($context["gantry"]) ? $context["gantry"] : null), "config", array(), "any", false, true), "get", array(0 => "styles.menu.animation"), "method"), "g-fade")) : ("g-fade")), "html", null, true);
                echo "\"";
                echo $context["SELF"]->getgetCustomWidth((isset($context["item"]) ? $context["item"] : null), (isset($context["root"]) ? $context["root"] : null), "submenu");
                echo ">
            <li class=\"g-dropdown-column\">
                ";
                // line 110
                echo $context["SELF"]->getdisplayContainers((isset($context["item"]) ? $context["item"] : null), (isset($context["root"]) ? $context["root"] : null), (isset($context["menu"]) ? $context["menu"] : null), (isset($context["gantry"]) ? $context["gantry"] : null), (isset($context["particle"]) ? $context["particle"] : null));
                echo "
            </li>
        </ul>
    ";
            }
        } catch (Exception $e) {
            ob_end_clean();

            throw $e;
        }

        return ('' === $tmp = ob_get_clean()) ? '' : new Twig_Markup($tmp, $this->env->getCharset());
    }

    public function getTemplateName()
    {
        return "@particles/menu.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  517 => 110,  509 => 108,  506 => 107,  503 => 106,  487 => 105,  469 => 101,  464 => 100,  461 => 99,  445 => 98,  433 => 95,  423 => 91,  417 => 88,  411 => 86,  406 => 85,  404 => 84,  401 => 83,  398 => 82,  382 => 81,  369 => 77,  366 => 75,  363 => 74,  360 => 73,  354 => 72,  351 => 71,  348 => 69,  345 => 68,  337 => 66,  329 => 64,  327 => 63,  322 => 62,  319 => 61,  316 => 60,  313 => 58,  311 => 57,  306 => 55,  303 => 54,  300 => 53,  294 => 51,  292 => 50,  285 => 49,  282 => 48,  277 => 47,  265 => 46,  239 => 45,  236 => 44,  233 => 43,  230 => 42,  227 => 41,  224 => 40,  221 => 39,  218 => 38,  215 => 37,  199 => 36,  187 => 33,  181 => 31,  179 => 30,  174 => 29,  171 => 28,  157 => 27,  144 => 23,  138 => 22,  136 => 21,  131 => 20,  128 => 19,  125 => 18,  111 => 17,  94 => 12,  92 => 11,  90 => 10,  88 => 9,  86 => 8,  72 => 7,  63 => 119,  57 => 117,  55 => 116,  52 => 115,  49 => 104,  46 => 97,  43 => 80,  40 => 35,  37 => 26,  34 => 16,  31 => 6,  25 => 4,  20 => 2,  19 => 1,);
    }
}
