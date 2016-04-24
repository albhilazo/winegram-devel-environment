class winegram
{
    $project_path = '/home/vagrant/winegram'
    $vhost_name   = 'winegram.dev'

    class { 'winegram::misc_packages': }
    class { 'winegram::time': }
    class { 'winegram::apache': project_path => $project_path, vhost_name => $vhost_name }
    class { 'winegram::php56': }
    class { 'winegram::mysql': }
    class { 'winegram::redis': }
    class { 'winegram::createfiles': project_path => $project_path }
}
