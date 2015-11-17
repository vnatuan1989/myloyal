<?php
return [
    '@class' => 'Gantry\\Component\\File\\CompiledYamlFile',
    'filename' => 'C:\\xampp\\htdocs\\myloyalclone/templates/rt_salient/blueprints/styles/header.yaml',
    'modified' => 1447314197,
    'data' => [
        'name' => 'Header Styles',
        'description' => 'Header styles for the Salient theme',
        'type' => 'section',
        'form' => [
            'fields' => [
                'background' => [
                    'type' => 'input.colorpicker',
                    'label' => 'Background',
                    'default' => '#ffffff'
                ],
                'text-color' => [
                    'type' => 'input.colorpicker',
                    'label' => 'Text',
                    'default' => '#212121'
                ]
            ]
        ]
    ]
];
