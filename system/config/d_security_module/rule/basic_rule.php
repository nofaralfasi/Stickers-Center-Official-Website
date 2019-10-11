<?php

$_['rules'] = array(

    'low_php_version' => array(
        'name'          => 'Low PHP version',
        'description'   => "You are using old PHP version, please update your PHP instance to at least PHP 5.6",
        'info_type'     => 'warning',
        'action'        => array()
    ),

    'install_folder' => array(
        'name'          => 'Install folder not deleted',
        'description'   => "It's unsecure to leave install folder in Opencart store. Anybody can completely delete your store.",
        'info_type'     => 'error',
        'action'        => array(
            '0' => array(
                'name'          => 'Fix it',
                'type'          => 'success',
                'fix_codename'  => 'install_folder'
            )
        )
    ),

    'no_zip_archive' => array(
        'name'          => 'ZipArchive not installed',
        'description'   => "'ZipArchive' is a PHP extension. Without it you can't install any extensions in you store.",
        'info_type'     => 'error',
        'action'        => array()
    ),

    'gzip_compression_level' => array(
        'name'          => 'GZIP compression Enabled',
        'description'   => "Using 'GZIP Compression' can affect work of some JS scripts on the frontend. Use this option carefully.",
        'info_type'     => 'warning',
        'action'        => array(
            '0' => array(
                'name'          => 'Fix it',
                'type'          => 'success',
                'fix_codename'  => 'gzip_compression_level'
            )
        ),
        'autofix'       => True
    ),

    'mbstring_overload' => array(
        'name'          => "MBstring overload Enabled",
        'description'   => "Directive 'mbstring.func_overload' can affect work of the PHP scripts, and make them work incorrect. Use this option carefully.",
        'info_type'     => 'warning',
        'action'        => array()
    ),

    'admin_password' => array(
        'name'          => "Unsecure admin passwords",
        'description'   => "Some of your ADMIN users use unsecure password:",
        'info_type'     => 'warning',
        'action'        => array()
    ),

    'proc_open' => array(
        'name'          => "Function 'proc_open' disabled",
        'description'   => "Function 'proc_open' may be needed for correct scan analysis. Please contact your hosting provider and enable it.",
        'info_type'     => 'warning',
        'action'        => array()
    ),

    'config_permission' => array(
        'name'          => 'Config permissions',
        'description'   => "The following files permission need to be set to 644 or 444 to prevent anyone else from writing to them:",
        'info_type'     => 'error',
        'action'        => array(
            '0' => array(
                'name'          => 'Fix it',
                'type'          => 'success',
                'fix_codename'  => 'config_permission'
            )
        )
    ),

    'max_input_vars' => array(
        'name'          => "Low 'max_input_vars' value",
        'description'   => "Value of 'max_input_vars' can affect on multiple aspects of your store. We recomend you to contact your hosting provider and increase the value of 'max_input_vars' to <b>5000</b>.",
        'info_type'     => 'warning',
        'action'        => array()
    ),

    'max_input_vars_to_user_permission' => array(
        'name'          => "Permission count exceed 'max_input_vars' value",
        'description'   => "If user permission exceed 'max_input_vars' value you can't save all your permissions, then some of them will be cut down automatically by the Opencart. Please contact your hosting provider and increase value of 'max_input_vars' to <b>5000</b>.",
        'info_type'     => 'error',
        'action'        => array()
    ),

    'https' => array(
        'name'          => "Unsecure network protocol",
        'description'   => "Your store use HTTP instead of HTTPS. It's not secure for customers data, and also can affect your position on Google search. Please contact your hosting and enable SSL sertificate.",
        'info_type'     => 'warning',
        'action'        => array()
    ),


);

