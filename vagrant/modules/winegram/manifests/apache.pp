class winegram::apache ($project_path, $vhost_name)
{
    class { '::apache':
        mpm_module => 'prefork',
        user  => 'vagrant',
        group => 'vagrant',
    }

    apache::vhost { $vhost_name:
        port    => '80',
        docroot => $project_path,
    }

    # PHP module
    include ::apache::mod::php
}