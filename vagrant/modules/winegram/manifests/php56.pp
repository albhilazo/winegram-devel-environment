class winegram::php56
{
    class { '::php':
        version => 'latest'
    }

    php::module { ['curl', 'dev', 'json', 'memcached', 'mysql', 'mysqlnd', 'sqlite', 'oauth', 'redis', 'xdebug']: }

    include composer
}
