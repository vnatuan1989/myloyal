<?php
return [
    '@class' => 'Gantry\\Component\\File\\CompiledYamlFile',
    'filename' => 'C:\\xampp\\htdocs\\myloyalclone/templates/rt_salient/blueprints/styles/expanded.yaml',
    'modified' => 1447314201,
    'data' => [
        'name' => 'Expanded Styles',
        'description' => 'Expanded styles for the Salient theme',
        'type' => 'section',
        'form' => [
            'fields' => [
                'background' => [
                    'type' => 'input.colorpicker',
                    'label' => 'Background',
                    'default' => '#ec4345'
                ],
                'text-color' => [
                    'type' => 'input.colorpicker',
                    'label' => 'Text',
                    'default' => '#ffffff'
                ],
                'background-image' => [
                    'type' => 'input.imagepicker',
                    'label' => 'Background Image',
                    'default' => 'gantry-media://rocketlauncher/home/expanded/img-01.png'
                ]
            ]
        ]
    ]
];
