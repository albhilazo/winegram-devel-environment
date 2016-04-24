class winegram::mysql
{
    class { '::mysql::server':
        root_password => ''
    }
}