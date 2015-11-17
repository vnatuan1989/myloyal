<?php
return [
    '@class' => 'Gantry\\Component\\File\\CompiledYamlFile',
    'filename' => 'C:\\xampp\\htdocs\\myloyalclone/media/gantry5/engines/nucleus/particles/menu.yaml',
    'modified' => 1441033710,
    'data' => [
        'name' => 'Menu',
        'description' => 'Gantry menu',
        'type' => 'particle',
        'form' => [
            'fields' => [
                'enabled' => [
                    'type' => 'input.checkbox',
                    'label' => 'Enabled',
                    'description' => 'Globally enable the menu particle.',
                    'default' => true
                ],
                '_info' => [
                    'type' => 'separator.note',
                    'class' => 'alert alert-info',
                    'content' => 'GANTRY5_PARTICLE_MENU_INFO'
                ],
                'base' => [
                    'type' => 'input.text',
                    'label' => 'Base Path',
                    'description' => 'Select the base path.',
                    'default' => '/'
                ],
                'menu' => [
                    'type' => 'menu.list',
                    'label' => 'Menu',
                    'description' => 'Select menu to be used with the particle.',
                    'default' => '',
                    'selectize' => [
                        'allowEmptyOption' => true
                    ],
                    'options' => [
                        '' => 'Use Default Menu',
                        '-active-' => 'Use Active Menu'
                    ]
                ],
                'startLevel' => [
                    'type' => 'input.text',
                    'label' => 'Start Level',
                    'description' => 'Set the start level of the menu.',
                    'default' => 1
                ],
                'maxLevels' => [
                    'type' => 'input.text',
                    'label' => 'Max Levels',
                    'description' => 'Set the maximum number of menu levels to display.',
                    'default' => 0
                ],
                'renderTitles' => [
                    'type' => 'input.checkbox',
                    'label' => 'Render Titles',
                    'description' => 'Renders the titles/tooltips of the Menu Items for accessibility.',
                    'default' => 0
                ],
                'mobileTarget' => [
                    'type' => 'input.checkbox',
                    'label' => 'Mobile Target',
                    'description' => 'Check this field if you want this menu to become the target for Mobile Menu and to appear in Offcanvas',
                    'default' => 0
                ]
            ]
        ]
    ]
];
