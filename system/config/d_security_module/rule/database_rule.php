<?php

$_['rules'] = array(

    'domain_for_spam' => array(
        'name'          => 'Domain blocked by Google',
        'description'   => "Your domain have beed listed in 'Google Safe Browsing' list. It's mean that your domain can contain potential danger software, or have been using for sending SPAM.",
        'info_type'     => 'error',
        'action'        => array()
    ),

    'customer_password' => array(
        'name'          => 'Unsecure customer passwords',
        'description'   => "Some of your customers use unsecure password:",
        'info_type'     => 'warning',
        'action'        => array()
    ),


);

