class winegram::misc_packages
{
    # Install miscellaneous packages
    $misc_packages = [
        'vim','telnet','git','zip','unzip','screen',
        'libssh2-1','libssh2-1-dev','gcc','g++',
        'autoconf','automake'
    ]

    package { $misc_packages: ensure => latest }
}
