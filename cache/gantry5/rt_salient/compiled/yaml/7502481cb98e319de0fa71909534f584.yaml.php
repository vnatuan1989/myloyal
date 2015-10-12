<?php
return [
    '@class' => 'Gantry\\Component\\File\\CompiledYamlFile',
    'filename' => 'C:\\wamp\\www\\myloyal/templates/rt_salient/particles/blockcontent.yaml',
    'modified' => 1441941680,
    'data' => [
        'name' => 'Block Content',
        'description' => 'Displays Block Content',
        'type' => 'particle',
        'form' => [
            'fields' => [
                'enabled' => [
                    'type' => 'input.checkbox',
                    'label' => 'Enabled',
                    'description' => 'Globally enable the particle.',
                    'default' => true
                ],
                'image' => [
                    'type' => 'input.imagepicker',
                    'label' => 'Image',
                    'description' => 'Select the main image.'
                ],
                'headline' => [
                    'type' => 'input.text',
                    'label' => 'Headline',
                    'description' => 'Customize the headline text.',
                    'placeholder' => 'Enter headline'
                ],
                'description' => [
                    'type' => 'textarea.textarea',
                    'label' => 'Description',
                    'description' => 'Customize the description.',
                    'placeholder' => 'Enter short description'
                ],
                'link' => [
                    'type' => 'input.text',
                    'label' => 'Headline Link',
                    'description' => 'Specify the link address.'
                ],
                'linktext' => [
                    'type' => 'input.text',
                    'label' => 'Headline Link Text',
                    'description' => 'Customize the link text.'
                ],
                'subcontents' => [
                    'type' => 'collection.list',
                    'array' => true,
                    'label' => 'Content Items',
                    'description' => 'Create each item to appear in the content row.',
                    'value' => 'title',
                    'ajax' => true,
                    'fields' => [
                        '.name' => [
                            'type' => 'input.text',
                            'label' => 'Title'
                        ],
                        '.icon' => [
                            'type' => 'input.icon',
                            'label' => 'Icon'
                        ],
                        '.img' => [
                            'type' => 'input.imagepicker',
                            'label' => 'Image'
                        ],
                        '.subtitle' => [
                            'type' => 'input.text',
                            'label' => 'Sub Title'
                        ],
                        '.description' => [
                            'type' => 'textarea.textarea',
                            'label' => 'Description'
                        ],
                        '.link' => [
                            'type' => 'input.text',
                            'label' => 'Item Link',
                            'description' => 'Specify the link address for the item.'
                        ],
                        '.class' => [
                            'type' => 'input.block-variations',
                            'label' => 'Variations'
                        ]
                    ]
                ]
            ]
        ]
    ]
];
