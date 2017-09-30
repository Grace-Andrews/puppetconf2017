Service {
  provider => dummy
}

class { 'python' :
  version    => 'system',
  pip        => 'present',
  dev        => 'absent',
  virtualenv => 'absent',
  gunicorn   => 'absent',
}

python::pip { 'Flask_0.10.1' :
  pkgname       => 'Flask',
  ensure        => '0.10.1',
  timeout       => 1800,
}

python::pip { 'requests' :
  pkgname       => 'requests',
  timeout       => 1800,
}

file { '/usr/src/app':
    ensure  => 'directory',
    mode    => '0755',
}

file { '/usr/src/app/app.py':
  ensure    => present,
  mode      => '0644',
  source      => 'file:///home/vagrant/catweb/app.py',
}
