include 'docker'

docker::run { 'tchung02/catweb':
 ensure	=> 'present',
 image 	=> 'tchung02/catweb',
 ports	=> ['5000'],
 expose	=> ['50'],
}
