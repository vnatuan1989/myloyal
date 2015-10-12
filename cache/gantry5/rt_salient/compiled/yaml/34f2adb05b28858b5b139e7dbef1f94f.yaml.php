<?php
return [
    '@class' => 'Gantry\\Component\\File\\CompiledYamlFile',
    'filename' => 'C:\\wamp\\www\\myloyal/templates/rt_salient/blueprints/styles/copyright.yaml',
    'modified' => 1441941680,
    'data' => [
        'name' => 'Copyright Styles',
        'description' => 'Copyright styles for the Salient theme',
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
                    'default' => '#686868'
                ]
            ]
        ]
    ]
];
