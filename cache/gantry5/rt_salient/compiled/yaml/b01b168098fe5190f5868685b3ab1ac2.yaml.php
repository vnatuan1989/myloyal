<?php
return [
    '@class' => 'Gantry\\Component\\File\\CompiledYamlFile',
    'filename' => 'C:\\wamp\\www\\myloyal/templates/rt_salient/particles/contentlist.yaml',
    'modified' => 1441941680,
    'data' => [
        'name' => 'Content List',
        'description' => 'Display content list content.',
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
                'image' => [
                    'type' => 'input.imagepicker',
                    'label' => 'Image',
                    'description' => 'Select desired image.'
                ],
                'imagetag' => [
                    'type' => 'input.text',
                    'label' => 'Image Tag',
                    'description' => 'Customize the image tag.',
                    'placeholder' => 'Enter image tag'
                ],
                'headline' => [
                    'type' => 'input.text',
                    'label' => 'Headline',
                    'description' => 'Customize the headline.',
                    'placeholder' => 'Enter headline'
                ],
                'subtitle' => [
                    'type' => 'input.text',
                    'label' => 'Subtitle',
                    'description' => 'Customize the subtitle.',
                    'placeholder' => 'Enter subtitle'
                ],
                'desc' => [
                    'type' => 'textarea.textarea',
                    'label' => 'Description',
                    'description' => 'Customize the description.',
                    'placeholder' => 'Enter short description'
                ],
                'readmore' => [
                    'type' => 'input.text',
                    'label' => 'Label',
                    'description' => 'Specify the readmore text.'
                ],
                'link' => [
                    'type' => 'input.text',
                    'label' => 'Link',
                    'description' => 'Specify the readmore link address.'
                ],
                'icon' => [
                    'type' => 'input.icon',
                    'label' => 'Icon',
                    'description' => 'Specify the read more icon.'
                ],
                'readmoreclass' => [
                    'type' => 'input.selectize',
                    'label' => 'Read More Classes',
                    'description' => 'CSS class name for the read more.'
                ],
                'cols' => [
                    'type' => 'select.select',
                    'label' => 'Grid Column',
                    'description' => 'Select the grid column amount for the list items',
                    'placeholder' => 'Select...',
                    'default' => 'g-listgrid-4cols',
                    'options' => [
                        'g-listgrid-2cols' => '2 Columns',
                        'g-listgrid-3cols' => '3 Columns',
                        'g-listgrid-4cols' => '4 Columns',
                        'g-listgrid-5cols' => '5 Columns'
                    ]
                ],
                'listgriditems' => [
                    'type' => 'collection.list',
                    'array' => true,
                    'label' => 'Content Lists',
                    'description' => 'Create each item to appear in the content row.',
                    'value' => 'title',
                    'ajax' => true,
                    'fields' => [
                        '.title' => [
                            'type' => 'input.text',
                            'label' => 'Title',
                            'skip' => true
                        ],
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
