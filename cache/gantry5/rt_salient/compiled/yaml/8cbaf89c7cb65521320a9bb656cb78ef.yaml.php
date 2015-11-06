<?php
return [
    '@class' => 'Gantry\\Component\\File\\CompiledYamlFile',
    'filename' => 'gantry-admin://blueprints/layout/block.yaml',
    'modified' => 1441033710,
    'data' => [
        'name' => 'Block',
        'description' => 'Layout block.',
        'type' => 'block',
        'form' => [
            'fields' => [
                'id' => [
                    'type' => 'input.text',
                    'label' => 'CSS ID',
                    'description' => 'Enter CSS id.',
                    'default' => NULL
                ],
                'class' => [
                    'type' => 'input.selectize',
                    'label' => 'CSS Classes',
                    'description' => 'Enter CSS class names.',
                    'default' => NULL
                ],
                'variations' => [
                    'type' => 'input.block-variations',
                    'label' => 'Variations',
                    'description' => 'Enter Theme Variations.',
                    'default' => NULL
                ],
                'extra' => [
                    'type' => 'collection.keyvalue',
                    'label' => 'Tag Attributes',
                    'description' => 'Extra Tag attributes.',
                    'key_placeholder' => 'Key (data-*, style, ...)',
                    'value_placeholder' => 'Value',
                    'exclude' => [
                        0 => 'id',
                        1 => 'class'
                    ]
                ],
                'fixed' => [
                    'type' => 'input.checkbox',
                    'label' => 'Fixed Size',
                    'description' => 'Make block size fixed. If set, this block will always take the same amount of space.'
                ],
                'size' => [
                    'type' => 'input.text',
                    'label' => 'Block Size',
                    'description' => 'Block size in percentages (5-100).',
                    'class' => 'custom-validation-field',
                    'formnovalidate' => true,
                    'pattern' => '^([5-9]|[1-9][0-9]|8.3{1,}(?:2)?|9.(09(?:1)?|1)|11.1{2,}|12.5|14.28[0-9]{2,}|16.6{2,}(?:7)?|33.3{2,}(?:4)?|100)$',
                    'min' => 5,
                    'max' => 100,
                    'append' => [
                        'type' => 'text',
                        'text' => '%'
                    ]
                ],
                '_note' => [
                    'type' => 'separator.note',
                    'class' => 'alert alert-warning center blocksize-note',
                    'content' => 'The <em>Block Size</em> can only be set <span class="blocksize-range">between <strong>#min#</strong>% and <strong>#max#</strong>%</span><span class="blocksize-fixed">to <strong>#max#</strong>%</span>'
                ]
            ]
        ]
    ]
];
