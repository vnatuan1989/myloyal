<?php
return [
    '@class' => 'Gantry\\Component\\File\\CompiledYamlFile',
    'filename' => 'C:\\xampp\\htdocs\\myloyalclone/media/gantry5/engines/nucleus/particles/assets.yaml',
    'modified' => 1441033710,
    'data' => [
        'name' => 'Custom CSS / JS',
        'description' => 'Configure custom CSS and Javascript.',
        'type' => 'atom',
        'form' => [
            'fields' => [
                'enabled' => [
                    'type' => 'input.checkbox',
                    'label' => 'Enabled',
                    'description' => 'Globally enable CSS/JS particles.',
                    'default' => true
                ],
                'css' => [
                    'type' => 'collection.list',
                    'array' => true,
                    'label' => 'CSS',
                    'description' => 'Add remove or modify custom CSS assets.',
                    'value' => 'name',
                    'ajax' => true,
                    'fields' => [
                        '.name' => [
                            'type' => 'input.text',
                            'label' => 'Name',
                            'skip' => true
                        ],
                        '.location' => [
                            'type' => 'input.filepicker',
                            'label' => 'File Location',
                            'icon' => 'fa-file-code-o',
                            'placeholder' => 'http://cdn1.remote/file.css',
                            'filter' => '\\.(css|less|scss|sass)$',
                            'root' => 'gantry-assets://'
                        ],
                        '.inline' => [
                            'type' => 'textarea.textarea',
                            'label' => 'Inline CSS',
                            'description' => 'Adds inline CSS for quick snippets.'
                        ],
                        '.extra' => [
                            'type' => 'collection.keyvalue',
                            'label' => 'Tag attributes',
                            'key_placeholder' => 'Key (data-*, style, ...)',
                            'value_placeholder' => 'Value',
                            'exclude' => [
                                0 => 'rel',
                                1 => 'href',
                                2 => 'type'
                            ]
                        ]
                    ]
                ],
                'javascript' => [
                    'type' => 'collection.list',
                    'array' => true,
                    'label' => 'Javascript',
                    'description' => 'Add remove or modify custom Javascript assets.',
                    'value' => 'name',
                    'ajax' => true,
                    'fields' => [
                        '.name' => [
                            'type' => 'input.text',
                            'label' => 'Name',
                            'skip' => true
                        ],
                        '.location' => [
                            'type' => 'input.filepicker',
                            'label' => 'File Location',
                            'icon' => 'fa-file-code-o',
                            'placeholder' => 'http://cdn1.remote/file.js',
                            'filter' => '\\.(jsx?|coffee)$',
                            'root' => 'gantry-assets://'
                        ],
                        '.inline' => [
                            'type' => 'textarea.textarea',
                            'label' => 'Inline JavaScript',
                            'description' => 'Adds inline JavaScript for quick snippets.'
                        ],
                        '.in_footer' => [
                            'type' => 'input.checkbox',
                            'label' => 'Before </body>',
                            'description' => 'Whether you want the script to load at the end of the body tag or inside head',
                            'default' => false
                        ],
                        '.extra' => [
                            'type' => 'collection.keyvalue',
                            'label' => 'Tag attributes',
                            'exclude' => [
                                0 => 'src',
                                1 => 'type'
                            ]
                        ]
                    ]
                ]
            ]
        ]
    ]
];
