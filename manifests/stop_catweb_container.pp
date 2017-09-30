include 'docker'

docker::run { 'tchung02/catweb':
	ensure => 'absent',
	image => 'tchung02/catweb',
	expose => ['5000'],
}
