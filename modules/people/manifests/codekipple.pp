class people::jbarnette {

    $home     = "/Users/${::boxen_user}"
    $my       = "${home}/my"
    $dotfiles = "${my}/dotfiles"

    file { $my:
        ensure  => directory
    }

    repository { $dotfiles:
        source  => 'codekipple/dotfiles',
        require => File[$my]
    }
}