<?php
return [
    '@class' => 'Gantry\\Component\\File\\CompiledYamlFile',
    'filename' => 'C:\\wamp\\www\\myloyal/templates/rt_salient/particles/animatedblock.yaml',
    'modified' => 1441941680,
    'data' => [
        'name' => 'Animated Block',
        'description' => 'Display animated block content.',
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
                'bgclass' => [
                    'type' => 'select.select',
                    'label' => 'Background Color',
                    'description' => 'Select the background color',
                    'placeholder' => 'Select...',
                    'default' => 'g-bg-1',
                    'options' => [
                        'g-bg-1' => 'Accent 1',
                        'g-bg-2' => 'Accent 2',
                        'g-bg-3' => 'Accent 3',
                        'g-bg-4' => 'Gradient 1',
                        'g-bg-5' => 'Gradient 2'
                    ]
                ],
                'animationclass' => [
                    'type' => 'select.select',
                    'label' => 'Animation',
                    'description' => 'Select the animation effect',
                    'placeholder' => 'Select...',
                    'default' => 'g-animatedblock-animation-1',
                    'options' => [
                        'g-animatedblock-animation-1' => 'Animation 1',
                        'g-animatedblock-animation-2' => 'Animation 2',
                        'g-animatedblock-animation-3' => 'Animation 3'
                    ]
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
                'headline' => [
                    'type' => 'input.text',
                    'label' => 'Headline',
                    'description' => 'Customize the headline.',
                    'placeholder' => 'Enter headline'
                ],
                'desc' => [
                    'type' => 'textarea.textarea',
                    'label' => 'Description',
                    'description' => 'Customize the description.',
                    'placeholder' => 'Enter short description'
                ],
                'readmore' => [
                    'type' => 'input.text',
                    'label' => 'Read More',
                    'description' => 'Specify the readmore text.'
                ],
                'link' => [
                    'type' => 'input.text',
                    'label' => 'Link',
                    'description' => 'Specify the readmore link address.'
                ],
                'button' => [
                    'type' => 'input.text',
                    'label' => 'Button',
                    'description' => 'Specify the button text.'
                ],
                'buttonclass' => [
                    'type' => 'input.selectize',
                    'label' => 'Button Classes',
                    'description' => 'CSS class name for the button.'
                ]
            ]
        ]
    ]
];
