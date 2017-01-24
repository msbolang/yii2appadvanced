<?php
$params = array_merge(
    require(__DIR__ . '/../../common/config/params.php'),
    require(__DIR__ . '/../../common/config/params-local.php'),
    require(__DIR__ . '/params.php'),
    require(__DIR__ . '/params-local.php')
);

return [
    'id' => 'app-backend',
    'basePath' => dirname(__DIR__),
    'controllerNamespace' => 'backend\controllers',
    'bootstrap' => ['log'],
    'modules' => [
        'admin' => [ 
         'class' => 'mdm\admin\Module', 
                    ],
    ],
    
    'aliases' => [ 
'@mdm/admin' => '@vendor/mdmsoft/yii2-admin',
],
    
   'as access' => [
   //ACF肯定是要加的，因为粗心导致该配置漏掉了，很是抱歉
    'class' => 'mdm\admin\components\AccessControl',
    'allowActions' => [
        //这里是允许访问的action
        '*'
        //controller/action
    ],
     ],
    'components' => [

        
        
 //2017-01-21 美化路径 rabc  yii2-admin
//components数组中加入authManager组件,有PhpManager和DbManager两种方式, 
//PhpManager将权限关系保存在文件里,这里使用的是DbManager方式,将权限关系保存在数据库. 
        
        //rabc 权限管理
    'authManager' => [ 
        'class' => 'yii\rbac\DbManager', 
        'defaultRoles' => ['guest'], 
    ], 
        
        
        //rabc 权限管理
        
        
//        //路径美化 phat
'urlManager' => [ 
////用于表明urlManager是否启用URL美化功能，在Yii1.1中称为path格式URL， 
//// Yii2.0中改称美化。 
//// 默认不启用。但实际使用中，特别是产品环境，一般都会启用。 
'enablePrettyUrl' => true, 
//// 是否启用严格解析，如启用严格解析，要求当前请求应至少匹配1个路由规则， 
//// 否则认为是无效路由。 
//// 这个选项仅在 enablePrettyUrl 启用后才有效。 
'enableStrictParsing' => false, 
//// 是否在URL中显示入口脚本。是对美化功能的进一步补充。 
'showScriptName' => false, 
//// 指定续接在URL后面的一个后缀，如 .html 之类的。仅在 enablePrettyUrl 启用时有效。 
    'suffix' => '', 
        'rules' => [
            "<controller:\w+>/<id:\d+>"=>"<controller>/view", 
            "<controller:\w+>/<action:\w+>"=>"<controller>/<action>"
       ],
    ],
      //路径美化end;
        
       //定义yii2-admin 模板
       //把vendor/dmstr/yii2-adminlte-asset/example-views/yiisoft/yii2-app目录下的layouts和site拷贝覆盖掉backend/views/目录下的lauouts和site对应的文件覆盖后记得屏蔽掉
//    'view' => [
//        'theme' => [
//            'pathMap' => [ 
//                '@app/views' => '@vendor/dmstr/yii2-adminlte-asset/example-views/yiisoft/yii2-app'
//            ],
//        ],
//    ],
        
     //2017-01-21 美化路径  and  RABC  AND  YII2-admin  

        'request' => [
            'csrfParam' => '_csrf-backend',
        ],
        'user' => [
            'identityClass' => 'common\models\User',
            'enableAutoLogin' => true,
            'identityCookie' => ['name' => '_identity-backend', 'httpOnly' => true],
        ],
        'session' => [
            // this is the name of the session cookie used for login on the backend
            'name' => 'advanced-backend',
        ],
        'log' => [
            'traceLevel' => YII_DEBUG ? 3 : 0,
            'targets' => [
                [
                    'class' => 'yii\log\FileTarget',
                    'levels' => ['error', 'warning'],
                ],
            ],
        ],
        'errorHandler' => [
            'errorAction' => 'site/error',
        ]
     
//        'urlManager' => [
//            'enablePrettyUrl' => true,
//            'showScriptName' => false,
//            'rules' => [
//                  "<controller:\w+>/<id:\d+>"=>"<controller>/view", 
//             "<controller:\w+>/<action:\w+>"=>"<controller>/<action>"
//            ],
//        ],
    
    ],
    
    
    
    
    'params' => $params,
];
