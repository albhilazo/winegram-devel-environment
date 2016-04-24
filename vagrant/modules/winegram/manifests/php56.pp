class winegram::php56
{
    class { '::php':
        version     => 'latest',
        config_file => '/etc/php5/apache2/php.ini',
        source      => "puppet:///modules/winegram/php.ini",
    }

    ::php::conf { 'php-cli.ini':
        path   => '/etc/php5/cli/php.ini',
        source => "puppet:///modules/winegram/php-cli.ini",
    }

    php::module { ['curl', 'dev', 'json', 'memcached', 'mysql', 'mysqlnd', 'sqlite', 'oauth', 'redis', 'xdebug']: }

    include composer
}
