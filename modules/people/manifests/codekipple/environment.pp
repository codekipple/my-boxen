class people::codekipple::environment {
    include stdlib
    include wget
    include libtool
    include pkgconfig
    include pcre
    include libpng
    include nginx
    include mysql

    include php::5_4_17

    # Install Composer globally on your PATH
    include php::composer

    # Set up PHP-FPM as a service running a specific version of PHP
    include php::fpm::5_4_17
}