<?php
return [
    '@class' => 'Gantry\\Component\\File\\CompiledYamlFile',
    'filename' => 'C:\\wamp\\www\\myloyal/templates/rt_salient/blueprints/styles/showcase.yaml',
    'modified' => 1441941680,
    'data' => [
        'name' => 'Showcase Colors',
        'description' => 'Showcase colors for the Salient theme',
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
                    'default' => '#999999'
                ]
            ]
        ]
    ]
];
