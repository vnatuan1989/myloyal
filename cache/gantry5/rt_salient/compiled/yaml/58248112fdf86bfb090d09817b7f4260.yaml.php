<?php
return [
    '@class' => 'Gantry\\Component\\File\\CompiledYamlFile',
    'filename' => 'C:\\wamp\\www\\myloyalclone/templates/rt_salient/particles/promocontent.yaml',
    'modified' => 1441941680,
    'data' => [
        'name' => 'Promo Content',
        'description' => 'Display promo content items.',
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
                'promostyle' => [
                    'type' => 'select.select',
                    'label' => 'Promo Style',
                    'description' => 'Select the promo title style.',
                    'placeholder' => 'Select...',
                    'default' => 'standard',
                    'options' => [
                        'standard' => 'Standard',
                        'promo' => 'Promo',
                        'superpromo' => 'Super Promo',
                        'subpromo' => 'Sub Promo'
                    ]
                ],
                'promo' => [
                    'type' => 'input.text',
                    'label' => 'Promo Text',
                    'description' => 'Customize the promo text.',
                    'placeholder' => 'Enter promo text'
                ],
                'desc' => [
                    'type' => 'textarea.textarea',
                    'label' => 'Description',
                    'description' => 'Customize the description.',
                    'placeholder' => 'Enter short description'
                ],
                'readmore' => [
                    'type' => 'input.text',
                    'label' => 'Readmore Text',
                    'description' => 'Specify the readmore text.',
                    'placeholder' => 'Enter readmore text'
                ],
                'readmoreclass' => [
                    'type' => 'input.selectize',
                    'label' => 'Readmore Classes',
                    'description' => 'CSS class name for the readmore button.'
                ],
                'link' => [
                    'type' => 'input.text',
                    'label' => 'Link',
                    'description' => 'Specify the readmore link address.'
                ],
                'linkstyle' => [
                    'type' => 'select.select',
                    'label' => 'Readmore Style',
                    'description' => 'Select the readmore style.',
                    'placeholder' => 'Select...',
                    'default' => 'block',
                    'options' => [
                        'block' => 'Block',
                        'inline' => 'Inline',
                        'aside' => 'Aside'
                    ]
                ],
                'tags' => [
                    'type' => 'collection.list',
                    'array' => true,
                    'label' => 'Tags',
                    'description' => 'Create tags for your content.',
                    'value' => 'title',
                    'ajax' => true,
                    'fields' => [
                        '.icon' => [
                            'type' => 'input.icon',
                            'label' => 'Icon'
                        ],
                        '.text' => [
                            'type' => 'input.text',
                            'label' => 'Text'
                        ],
                        '.link' => [
                            'type' => 'input.text',
                            'label' => 'Link'
                        ]
                    ]
                ]
            ]
        ]
    ]
];
