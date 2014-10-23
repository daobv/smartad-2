<?php
return CMap::mergeArray(
    require(dirname(__FILE__) . '/main.php'),
    array(
        'components' => array(
            // uncomment the following to enable URLs in path-format
            'urlManager' => array(
                'urlFormat' => 'path',
                'showScriptName' => false,
                'rules'     => array(
                    'chuyen-muc/<slug>' => 'category/index',
                    'static-page/<slug>' => 'staticPage/index',
                    'application/<slug>' => 'application/view',
                    'cpi/<user>/<slug>' =>'interaction/create',
                    'incoming/<slug>/<hash_code>' =>'interaction/update',
                    'dang-nhap' => 'user/login',
                ),
            ),
        ),
    )
);
