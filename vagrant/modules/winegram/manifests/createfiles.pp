class winegram::createfiles ($project_path)
{
    file { "${project_path}/info.php":
        ensure => 'present',
        source => "puppet:///modules/winegram/info.php",
        mode   => "0644",
    }
}