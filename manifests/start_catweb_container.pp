include 'docker'

docker::run { 'tchung02/catweb':
 ensure	=> 'present',
 image 	=> 'tchung02/catweb',
 expose	=> ['5000'],
}
