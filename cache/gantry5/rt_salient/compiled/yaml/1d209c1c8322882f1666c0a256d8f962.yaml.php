<?php
return [
    '@class' => 'Gantry\\Component\\File\\CompiledYamlFile',
    'filename' => 'C:\\xampp\\htdocs\\myloyalclone/templates/rt_salient/blueprints/styles/slideshow.yaml',
    'modified' => 1447314193,
    'data' => [
        'name' => 'Slideshow Styles',
        'description' => 'Slideshow styles for the Salient theme',
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
                ],
                'background-image' => [
                    'type' => 'input.imagepicker',
                    'label' => 'Background Image',
                    'default' => 'gantry-media://rocketlauncher/home/slideshow/bg.jpg'
                ]
            ]
        ]
    ]
];
