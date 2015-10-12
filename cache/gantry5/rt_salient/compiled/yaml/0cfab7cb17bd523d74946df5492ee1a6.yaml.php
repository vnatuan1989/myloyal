<?php
return [
    '@class' => 'Gantry\\Component\\File\\CompiledYamlFile',
    'filename' => 'C:\\wamp\\www\\myloyal/templates/rt_salient/particles/contact.yaml',
    'modified' => 1441941680,
    'data' => [
        'name' => 'Contact',
        'description' => 'Display contact.',
        'type' => 'particle',
        'form' => [
            'fields' => [
                'enabled' => [
                    'type' => 'input.checkbox',
                    'label' => 'Enabled',
                    'description' => 'Globally enable icon menu particles.',
                    'default' => true
                ],
                'class' => [
                    'type' => 'input.selectize',
                    'label' => 'CSS Classes',
                    'description' => 'CSS class name for the particle.'
                ],
                'title' => [
                    'type' => 'input.text',
                    'label' => 'Title',
                    'description' => 'Customize the title text.',
                    'placeholder' => 'Enter title'
                ],
                'contactitems' => [
                    'type' => 'collection.list',
                    'array' => true,
                    'label' => 'Contact Items',
                    'description' => 'Create each item to appear in the content row.',
                    'value' => 'label',
                    'ajax' => true,
                    'fields' => [
                        '.icon' => [
                            'type' => 'input.icon',
                            'label' => 'Icon'
                        ],
                        '.label' => [
                            'type' => 'input.text',
                            'label' => 'Label'
                        ],
                        '.text' => [
                            'type' => 'input.text',
                            'label' => 'Value'
                        ]
                    ]
                ],
                'mapposition' => [
                    'type' => 'select.select',
                    'label' => 'Map Position',
                    'description' => 'Set the map position',
                    'placeholder' => 'Select...',
                    'default' => 'top',
                    'options' => [
                        'top' => 'Top',
                        'bottom' => 'Bottom'
                    ]
                ],
                'maps' => [
                    'type' => 'collection.list',
                    'array' => true,
                    'label' => 'Maps',
                    'description' => 'Create contact maps',
                    'value' => 'label',
                    'ajax' => true,
                    'fields' => [
                        '.img' => [
                            'type' => 'input.imagepicker',
                            'label' => 'Image'
                        ],
                        '.overlay' => [
                            'type' => 'select.select',
                            'label' => 'Enable Overlay',
                            'description' => 'Enable the map overlay',
                            'placeholder' => 'Select...',
                            'default' => 'enabled',
                            'options' => [
                                'enabled' => 'Enabled',
                                'disabled' => 'Disabled'
                            ]
                        ],
                        '.marker' => [
                            'type' => 'select.select',
                            'label' => 'Enable Marker',
                            'description' => 'Enable the map marker',
                            'placeholder' => 'Select...',
                            'default' => 'enabled',
                            'options' => [
                                'enabled' => 'Enabled',
                                'disabled' => 'Disabled'
                            ]
                        ],
                        '.icon' => [
                            'type' => 'input.icon',
                            'label' => 'Marker Icon'
                        ],
                        '.height' => [
                            'type' => 'input.text',
                            'label' => 'Map Min-Height',
                            'description' => 'Set minimum map height in rem, em, or px unit values',
                            'default' => '400px',
                            'pattern' => '\\d+(\\.\\d+){0,1}(rem|em|ex|ch|vw|vh|vmin|vmax|%|px|cm|mm|in|pt|pc)'
                        ],
                        '.top' => [
                            'type' => 'input.text',
                            'label' => 'Top Position',
                            'description' => 'Set marker position from the top in rem, em, or px unit values',
                            'default' => '140px',
                            'pattern' => '\\d+(\\.\\d+){0,1}(rem|em|ex|ch|vw|vh|vmin|vmax|%|px|cm|mm|in|pt|pc)'
                        ],
                        '.left' => [
                            'type' => 'input.text',
                            'label' => 'Left Position',
                            'description' => 'Set marker position from the left in rem, em, or px unit values',
                            'default' => '170px',
                            'pattern' => '\\d+(\\.\\d+){0,1}(rem|em|ex|ch|vw|vh|vmin|vmax|%|px|cm|mm|in|pt|pc)'
                        ]
                    ]
                ]
            ]
        ]
    ]
];
