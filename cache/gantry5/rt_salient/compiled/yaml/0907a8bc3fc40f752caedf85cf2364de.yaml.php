<?php
return [
    '@class' => 'Gantry\\Component\\File\\CompiledYamlFile',
    'filename' => 'C:\\wamp\\www\\myloyalclone/templates/rt_salient/blueprints/styles/feature.yaml',
    'modified' => 1441941680,
    'data' => [
        'name' => 'Feature Styles',
        'description' => 'Feature styles for the Salient theme',
        'type' => 'section',
        'form' => [
            'fields' => [
                'background' => [
                    'type' => 'input.colorpicker',
                    'label' => 'Background',
                    'default' => '#111111'
                ],
                'text-color' => [
                    'type' => 'input.colorpicker',
                    'label' => 'Text',
                    'default' => '#999999'
                ],
                'background-image' => [
                    'type' => 'input.imagepicker',
                    'label' => 'Background Image',
                    'default' => 'gantry-media://rocketlauncher/home/feature/img-01.jpg'
                ]
            ]
        ]
    ]
];
