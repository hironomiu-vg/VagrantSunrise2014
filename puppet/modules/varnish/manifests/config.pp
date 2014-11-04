class varnish::config {
    file { "/etc/sysconfig/varnish":
        owner => "root", group => "root",
        content => template('varnish/varnish'),
        mode => 600,
        notify => Service['varnish'],
    }
}
