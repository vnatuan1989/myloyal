<?php
return [
    '@class' => 'Gantry\\Component\\File\\CompiledYamlFile',
    'filename' => 'C:\\wamp\\www\\myloyalclone/templates/rt_salient/particles/logo.yaml',
    'modified' => 1441941680,
    'data' => [
        'name' => 'Logo',
        'description' => 'Display a logo.',
        'type' => 'particle',
        'form' => [
            'fields' => [
                'enabled' => [
                    'type' => 'input.checkbox',
                    'label' => 'Enabled',
                    'description' => 'Globally enable logo particles.',
                    'default' => true
                ],
                'url' => [
                    'type' => 'input.text',
                    'label' => 'Url',
                    'description' => 'Url for the image. Leave empty to go to home page.'
                ],
                'rel' => [
                    'type' => 'input.text',
                    'label' => 'Rel',
                    'description' => 'Rel for the link.'
                ],
                'image' => [
                    'type' => 'input.imagepicker',
                    'label' => 'Image',
                    'description' => 'Select desired logo image.'
                ],
                'alt' => [
                    'type' => 'input.text',
                    'label' => 'Alt',
                    'description' => 'Logo image alt / description text.'
                ],
                'text' => [
                    'type' => 'input.text',
                    'label' => 'Text',
                    'description' => 'Input logo text.'
                ],
                'class' => [
                    'type' => 'input.selectize',
                    'label' => 'CSS Classes',
                    'description' => 'Set a specific CSS class for custom styling.'
                ]
            ]
        ]
    ]
];
