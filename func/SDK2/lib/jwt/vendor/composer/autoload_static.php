<?php

// autoload_static.php @generated by Composer

namespace Composer\Autoload;

class ComposerStaticInitee54859d29944e33d48e30faccdd7a5d
{
    public static $prefixLengthsPsr4 = array (
        'F' => 
        array (
            'Firebase\\JWT\\' => 13,
        ),
    );

    public static $prefixDirsPsr4 = array (
        'Firebase\\JWT\\' => 
        array (
            0 => __DIR__ . '/..' . '/firebase/php-jwt/src',
        ),
    );

    public static function getInitializer(ClassLoader $loader)
    {
        return \Closure::bind(function () use ($loader) {
            $loader->prefixLengthsPsr4 = ComposerStaticInitee54859d29944e33d48e30faccdd7a5d::$prefixLengthsPsr4;
            $loader->prefixDirsPsr4 = ComposerStaticInitee54859d29944e33d48e30faccdd7a5d::$prefixDirsPsr4;

        }, null, ClassLoader::class);
    }
}
