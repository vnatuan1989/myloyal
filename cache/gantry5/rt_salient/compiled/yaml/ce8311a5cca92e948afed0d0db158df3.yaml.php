<?php
return [
    '@class' => 'Gantry\\Component\\File\\CompiledYamlFile',
    'filename' => 'C:\\wamp\\www\\myloyalclone/templates/rt_salient/particles/infolist.yaml',
    'modified' => 1441941680,
    'data' => [
        'name' => 'Info List',
        'description' => 'Displays Info List',
        'type' => 'particle',
        'form' => [
            'fields' => [
                'enabled' => [
                    'type' => 'input.checkbox',
                    'label' => 'Enabled',
                    'description' => 'Globally enable the particle.',
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
                'intro' => [
                    'type' => 'textarea.textarea',
                    'label' => 'Intro',
                    'description' => 'Customize the intro text.',
                    'placeholder' => 'Enter short description'
                ],
                'cols' => [
                    'type' => 'select.select',
                    'label' => 'Grid Column',
                    'description' => 'Select the grid column amount for the list items',
                    'placeholder' => 'Select...',
                    'default' => 'g-1cols',
                    'options' => [
                        'g-1cols' => '1 Column',
                        'g-2cols' => '2 Columns',
                        'g-3cols' => '3 Columns',
                        'g-4cols' => '4 Columns',
                        'g-5cols' => '5 Columns'
                    ]
                ],
                'infolists' => [
                    'type' => 'collection.list',
                    'array' => true,
                    'label' => 'Info Lists',
                    'description' => 'Create each item to appear in the content row.',
                    'value' => 'title',
                    'ajax' => true,
                    'fields' => [
                        '.title' => [
                            'type' => 'input.text',
                            'label' => 'Item Title',
                            'description' => 'Customize the item title text.',
                            'placeholder' => 'Enter item title'
                        ],
                        '.image' => [
                            'type' => 'input.imagepicker',
                            'label' => 'Image',
                            'description' => 'Select desired image.'
                        ],
                        '.imageloc' => [
                            'type' => 'select.select',
                            'label' => 'Image Location',
                            'description' => 'Select the location for the image',
                            'placeholder' => 'Select...',
                            'default' => 'left',
                            'options' => [
                                'left' => 'Left',
                                'right' => 'Right'
                            ]
                        ],
                        '.textstyle' => [
                            'type' => 'select.select',
                            'label' => 'Text Style',
                            'description' => 'Select the style for the text',
                            'placeholder' => 'Select...',
                            'default' => 'compact',
                            'options' => [
                                'compact' => 'Compact',
                                'large' => 'Large',
                                'bold' => 'Bold'
                            ]
                        ],
                        '.imagestyle' => [
                            'type' => 'select.select',
                            'label' => 'Image Style',
                            'description' => 'Select the style for the image',
                            'placeholder' => 'Select...',
                            'default' => 'compact',
                            'options' => [
                                'compact' => 'Compact',
                                'large' => 'Large',
                                'browser' => 'Browser'
                            ]
                        ],
                        '.desc' => [
                            'type' => 'textarea.textarea',
                            'label' => 'Description',
                            'description' => 'Customize the description.',
                            'placeholder' => 'Enter short description'
                        ],
                        '.tag' => [
                            'type' => 'input.text',
                            'label' => 'Tag',
                            'description' => 'Customize the tag',
                            'placeholder' => 'Enter tag'
                        ],
                        '.subtag' => [
                            'type' => 'input.text',
                            'label' => 'Sub Tag',
                            'description' => 'Customize the sub tag',
                            'placeholder' => 'Enter sub tag'
                        ],
                        '.label' => [
                            'type' => 'input.text',
                            'label' => 'Label',
                            'description' => 'Customize the read more label',
                            'placeholder' => 'Enter read more label'
                        ],
                        '.link' => [
                            'type' => 'input.text',
                            'label' => 'Link',
                            'description' => 'Specify the link address.'
                        ],
                        '.icon' => [
                            'type' => 'input.icon',
                            'label' => 'Icon',
                            'description' => 'Specify the read more icon.'
                        ],
                        '.readmoreclass' => [
                            'type' => 'input.selectize',
                            'label' => 'CSS Classes',
                            'description' => 'CSS class name for the read more.'
                        ]
                    ]
                ]
            ]
        ]
    ]
];
