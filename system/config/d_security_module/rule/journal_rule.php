<?php

$_['rules'] = array(

     'journal_js_mini' => array(
        'name'          => "Journal 2 JS minification enabled",
        'description'   => "Journal 2 JS minification can affect and corrupt modules JS files. Use this option carefully.",
        'info_type'     => 'warning',
        'action'        => array(
            '0' => array(
                'name'          => 'Fix it',
                'type'          => 'success',
                'fix_codename'  => 'journal_js_mini'
            )
        )
    ),

    'journal_css_mini' => array(
        'name'          => "Journal 2 CSS minification enabled",
        'description'   => "Journal 2 CSS minification can affect and corrupt modules CSS files. Use this option carefully.",
        'info_type'     => 'warning',
        'action'        => array(
            '0' => array(
                'name'          => 'Fix it',
                'type'          => 'success',
                'fix_codename'  => 'journal_css_mini'
            )
        )
    ),

);